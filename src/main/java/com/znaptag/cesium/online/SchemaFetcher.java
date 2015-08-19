package com.znaptag.cesium.online;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.znaptag.cesium.schema.*;

public class SchemaFetcher
{
    private Connection conn;

    public SchemaFetcher(Connection conn)
    {
        this.conn = conn;
    }

    private TypeSpec parseType(String typeString)
    {
        Pattern p = Pattern.compile("^([A-Za-z0-9]+)");
        Matcher m = p.matcher(typeString);

        MySQLType type = null;
        if (m.find()) {
            String typeName = m.group(1);
            type = MySQLType.fromString(typeName);
        } else {
            throw new RuntimeException("Illegal type " + typeString);
        }

        if (type != null) {
            Class<? extends TypeSpec> typeSpecClass = type.getTypeSpecClass();
            Constructor<?>[] constructors = typeSpecClass.getConstructors();
            try {
                TypeSpec spec = (TypeSpec)constructors[0].newInstance(type);
                spec.setFromTypeString(typeString);
                return spec;
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e);
            } catch (InstantiationException e) {
                throw new RuntimeException(e);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new RuntimeException("Unknown type string: " + typeString);
        }
    }

    public Schema retrieve()
    throws SQLException
    {
        Schema schema = new Schema();
        try (PreparedStatement stmt = conn.prepareStatement("SHOW TABLE STATUS")) {
            stmt.execute();
            try (ResultSet rs = stmt.getResultSet()) {
                while (rs.next()) {
                    Table table = new Table();
                    table.setName(rs.getString(1));
                    schema.addTable(table);
                }
            }

            for (Table table : schema.getTables()) {
                String sql = String.format("SHOW FULL COLUMNS FROM `%s`", table.getName());
                stmt.executeQuery(sql);

                try (ResultSet rs = stmt.getResultSet()) {
                    while (rs.next()) {
                        Column column = new Column();
                        column.setName(rs.getString("Field"));
                        String type = rs.getString("Type");
                        column.setTypeSpec(parseType(type));
                        // rs.getString("Collation");
                        // rs.getString("Null");
                        // rs.getString("Key");
                        // rs.getString("Default");
                        // rs.getString("Extra");
                        // rs.getString("Privileges");
                        String comment = rs.getString("Comment");
                        if (!"".equals(comment)) {
                            column.setComment(comment);
                        }
                        table.addColumn(column);
                    }
                }

                String sql2 = String.format("SHOW INDEX FROM `%s`", table.getName());
                stmt.executeQuery(sql2);

                try (ResultSet rs = stmt.getResultSet()) {
                    while (rs.next()) {
                        String name = rs.getString("Key_name");
                        int seqInIndex = Integer.parseInt(rs.getString("Seq_in_index"));
                        String nonUnique = rs.getString("Non_unique");
                        String type = rs.getString("Index_type");
                        String columnName = rs.getString("Column_name");

                        Index index;

                        // Only create the index if this is the first
                        // column in it
                        if (seqInIndex == 1) {
                            index = new Index();

                            index.setName(name);

                            if ("BTREE".equals(type)) {
                                if ("PRIMARY".equals(name)) {
                                    index.setKeyType(Index.KeyType.PRIMARY);
                                } else if ("0".equals(nonUnique)) {
                                    index.setKeyType(Index.KeyType.UNIQUE);
                                } else {
                                    index.setKeyType(Index.KeyType.STANDARD);
                                }
                            }

                            if (index.getKeyType() == Index.KeyType.PRIMARY) {
                                table.setPrimaryKey(index);
                            } else {
                                table.addIndex(index);
                            }
                        }
                        // Otherwise, just retrieve the already created object
                        else {
                            if ("PRIMARY".equals(name)) {
                                index = table.getPrimaryKey();
                            } else {
                                index = table.getIndex(name);
                            }
                        }

                        index.addPart(columnName, 0);
                    }
                }
            }
        }

        return schema;
    }
}
