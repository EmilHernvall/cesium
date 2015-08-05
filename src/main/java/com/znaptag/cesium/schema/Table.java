package com.znaptag.cesium.schema;

import java.util.Map;
import java.util.LinkedHashMap;

public class Table
{
    private String name = null;
    private Map<String, Column> columns = null;

    public Table()
    {
        this.columns = new LinkedHashMap<>();
    }

    public void setName(String v) { this.name = v; }
    public String getName() { return name; }

    public void addColumn(Column column)
    {
        columns.put(column.getName(), column);
    }

    public void print()
    {
        System.out.println(name);
        for (Column column : columns.values()) {
            System.out.println("\t" + column);
        }
    }
}
