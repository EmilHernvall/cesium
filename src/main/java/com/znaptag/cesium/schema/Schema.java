package com.znaptag.cesium.schema;

import java.util.Collections;
import java.util.ArrayList;
import java.util.List;
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

    public List<Table> getTables()
    {
        return Collections.unmodifiableList(new ArrayList<>(tables.values()));
    }

    public void print()
    {
        for (Table table : tables.values()) {
            table.print();
        }
    }
}
