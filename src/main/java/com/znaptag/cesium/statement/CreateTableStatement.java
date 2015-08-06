package com.znaptag.cesium.statement;

import com.znaptag.cesium.schema.*;

public class CreateTableStatement implements Statement
{
    private Table tableDefinition;

    public CreateTableStatement()
    {
    }

    public void setTableDefinition(Table v) { this.tableDefinition = v; }
    public Table getTableDefinition() { return tableDefinition; }

    public void print()
    {
        System.out.println("CREATE TABLE");
        tableDefinition.print();
    }
}
