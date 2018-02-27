package com.znaptag.cesium.schema;

import java.util.Map;
import java.util.LinkedHashMap;
import java.util.ArrayList;
import java.util.List;

import com.znaptag.cesium.statement.Statement;
import com.znaptag.cesium.statement.AlterTableStatement;
import com.znaptag.cesium.statement.AlterTableStatement.Action;
import com.znaptag.cesium.statement.AlterTableStatement.AddColumnAction;
import com.znaptag.cesium.statement.AlterTableStatement.DropColumnAction;
import com.znaptag.cesium.util.SetDifference;

public class Table implements Comparable<Table>
{
    private String name = null;
    private Map<String, Column> columns = null;
    private Index primaryKey;
    private Map<String, Index> indices;
    private String charset = null;
    private String collate = null;
    private String engine = null;

    public Table()
    {
        this.columns = new LinkedHashMap<>();
        this.indices = new LinkedHashMap<>();
    }

    public void setName(String v) { this.name = v; }
    public Table withName(String v) { this.name = v; return this; }
    public String getName() { return name; }

    public void setCharset(String v) { this.charset = v; }
    public Table withCharset(String v) { this.charset = v; return this; }
    public String getCharset() { return charset; }

    public void setCollate(String v) { this.collate = v; }
    public Table withCollate(String v) { this.collate = v; return this; }
    public String getCollate() { return collate; }

    public void setEngine(String v) { this.engine = v; }
    public Table withEngine(String v) { this.engine = v; return this; }
    public String getEngine() { return engine; }

    public void setPrimaryKey(Index v) { this.primaryKey = v; }
    public Table withPrimaryKey(Index v) { this.primaryKey = v; return this; }
    public Index getPrimaryKey() { return primaryKey; }

    public void addColumn(Column column)
    {
        columns.put(column.getName(), column);
    }

    public Table withColumn(Column column)
    {
        columns.put(column.getName(), column);
        return this;
    }

    public Column getColumn(String name)
    {
        return columns.get(name);
    }

    public void removeColumn(String name)
    {
        columns.remove(name);
    }

    public void addIndex(Index index)
    {
        indices.put(index.getName(), index);
    }

    public Table withIndex(Index index)
    {
        indices.put(index.getName(), index);
        return this;
    }

    public Index getIndex(String name)
    {
        return indices.get(name);
    }

    public void print()
    {
        System.out.println(name);
        for (Column column : columns.values()) {
            System.out.println("\t" + column);
        }
        if (primaryKey != null) {
            System.out.println("\t" + primaryKey);
        }
        for (Index index : indices.values()) {
            System.out.println("\t" + index);
        }
        System.out.println("\tcharset=" + charset);
        System.out.println("\tcollation=" + collate);
        System.out.println("\tengine=" + engine);
    }

    @Override
    public int compareTo(Table table)
    {
        return name.compareTo(table.name);
    }

    public Statement differenceTo(Table otherTable)
    {
        SetDifference<String> diff = SetDifference.calculate(columns.keySet(),
                                                             otherTable.columns.keySet());

        AlterTableStatement stmt = new AlterTableStatement();
        stmt.setTableName(name);

        // TODO: Find potential renames?
        if (diff.onlyInSecond().size() > 0) {
            //System.out.println("\t\tAdded columns:");
            for (String col : diff.onlyInSecond()) {
                Column secondCol = otherTable.columns.get(col);
                //System.out.println("\t\t" + col);

                AddColumnAction action = new AddColumnAction();
                action.setColumnDefinition(secondCol);
                stmt.addAction(action);
            }
        }

        if (diff.onlyInFirst().size() > 0) {
            //System.out.println("\t\tRemoved columns:");
            for (String col : diff.onlyInFirst()) {
                //System.out.println("\t\t" + col);

                DropColumnAction action = new DropColumnAction();
                action.setName(col);
                stmt.addAction(action);
            }
        }

        //System.out.println("\t\tCommon columns:");
        for (String column : diff.inBoth()) {
            Column firstCol = columns.get(column);
            Column secondCol = otherTable.columns.get(column);
            //System.out.println("\t\t" + column);
            Action action = firstCol.differenceTo(secondCol);
            if (action != null) {
                stmt.addAction(action);
            }
        }

        if (stmt.getActions().size() > 0) {
            return stmt;
        }

        return null;
    }
}
