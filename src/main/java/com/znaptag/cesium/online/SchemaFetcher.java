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
                    String name = rs.getString("Name");
                    table.setName(name);
                    String engine = rs.getString("Engine");
                    table.setEngine(engine);
                    // rs.getInt("Version");
                    // rs.getString("Row_format");
                    // rs.getInt("Rows");
                    // rs.getInt("Avg_row_length");
                    // rs.getInt("Data_length");
                    // rs.getInt("Max_data_length");
                    // rs.getInt("Index_length");
                    // rs.getInt("Data_free");
                    int autoincrement = rs.getInt("Auto_increment");
                    // rs.getTimestamp("Create_time");
                    // rs.getTimestamp("Update_time");
                    // rs.getTimestamp("Check_time");
                    String collate = rs.getString("Collation");
                    table.setCollate(collate);
                    // rs.getString("Checksum");
                    // rs.getString("Create_options");
                    // rs.getString("Comment");
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
                        String collate = rs.getString("Collation");
                        if (collate != null && !collate.equals(table.getCollate())) {
                            column.setCollate(collate);
                        }
                        String nullable = rs.getString("Null");
                        column.setAllowNull("YES".equals(nullable));
                        // rs.getString("Key");
                        String defaultValue = rs.getString("Default");
                        column.setDefaultValue(defaultValue);
                        String extra = rs.getString("Extra");
                        if (extra.contains("auto_increment")) {
                            column.setAutoIncrement(true);
                        }
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
