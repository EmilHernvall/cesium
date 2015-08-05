package com.znaptag.cesium.schema;

import java.util.Map;
import java.util.LinkedHashMap;

public class Table
{
    private String name = null;
    private Map<String, Column> columns = null;
    private Index primaryKey;
    private Map<String, Index> indices;

    public Table()
    {
        this.columns = new LinkedHashMap<>();
        this.indices = new LinkedHashMap<>();
    }

    public void setName(String v) { this.name = v; }
    public String getName() { return name; }

    public void setPrimaryKey(Index v) { this.primaryKey = v; }
    public Index getPrimaryKey() { return primaryKey; }

    public void addColumn(Column column)
    {
        columns.put(column.getName(), column);
    }

    public void addIndex(Index index)
    {
        indices.put(index.getName(), index);
    }

    public void print()
    {
        System.out.println(name);
        for (Column column : columns.values()) {
            System.out.println("\t" + column);
        }
        for (Index index : indices.values()) {
            System.out.println("\t" + index);
        }
    }
}
