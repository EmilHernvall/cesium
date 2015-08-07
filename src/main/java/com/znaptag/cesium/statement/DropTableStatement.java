package com.znaptag.cesium.statement;

import java.util.List;
import java.util.ArrayList;

import com.znaptag.cesium.schema.*;

public class DropTableStatement implements Statement
{
    private String tableName;

    public DropTableStatement()
    {
    }

    public void setTableName(String v) { this.tableName = v; }
    public String getTableName() { return tableName; }

    public void print()
    {
        System.out.println("DROP TABLE " + tableName);
    }

    @Override
    public void execute(Schema schema)
    {
        print();

        Table table = schema.getTable(tableName);
        if (table == null) {
            throw new RuntimeException("Table " + tableName + " not found");
        }

        schema.removeTable(table);
    }
}
