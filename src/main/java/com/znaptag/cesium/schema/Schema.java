package com.znaptag.cesium.schema;

import java.util.Map;
import java.util.HashMap;

public class Schema
{
    private Map<String, Table> tables;

    public Schema()
    {
        tables = new HashMap<>();
    }

    public void addTable(Table table)
    {
        tables.put(table.getName(), table);
    }

    public void removeTable(Table table)
    {
        tables.remove(table.getName());
    }

    public Table getTable(String tableName)
    {
        return tables.get(tableName);
    }

    public void print()
    {
        for (Table table : tables.values()) {
            table.print();
        }
    }
}
