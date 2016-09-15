package com.znaptag.cesium.schema;

import java.util.Collections;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;

import com.znaptag.cesium.statement.CreateTableStatement;
import com.znaptag.cesium.statement.DropTableStatement;
import com.znaptag.cesium.statement.Statement;
import com.znaptag.cesium.util.SetDifference;

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

    public List<Statement> differenceTo(Schema otherSchema)
    {
        SetDifference<String> diff = SetDifference.calculate(tables.keySet(),
                                                             otherSchema.tables.keySet());

        List<Statement> ddl = new ArrayList<>();

        //System.out.println("Added tables:");
        for (String tbl : diff.onlyInSecond()) {
            Table secondTbl = otherSchema.tables.get(tbl);
            CreateTableStatement stmt = new CreateTableStatement();
            stmt.setTableDefinition(secondTbl);
            ddl.add(stmt);
            //System.out.println("\t" + tbl);
        }

        //System.out.println("Removed tables:");
        for (String tbl : diff.onlyInFirst()) {
            //System.out.println("\t" + tbl);
            DropTableStatement stmt = new DropTableStatement();
            stmt.setTableName(tbl);
            ddl.add(stmt);
        }

        //System.out.println("Common tables:");
        for (String tbl : diff.inBoth()) {
            Table firstTbl = tables.get(tbl);
            Table secondTbl = otherSchema.tables.get(tbl);
            //System.out.println(tbl);
            Statement stmt = firstTbl.differenceTo(secondTbl);
            if (stmt != null) {
                ddl.add(stmt);
            }
        }

        for (Statement stmt : ddl) {
            stmt.print();
        }

        return ddl;
    }
}
