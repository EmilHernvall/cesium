package com.znaptag.cesium.statement;

import java.util.List;
import java.util.ArrayList;

import com.znaptag.cesium.schema.*;

public class AlterTableStatement implements Statement
{
    public static class Action
    {
        public void execute(Table table, Schema schema)
        {
        }
    }

    public static class AddColumnAction extends Action
    {
        private Column columnDefinition;

        public void setColumnDefinition(Column v) { this.columnDefinition = v; }
        public Column getColumnDefinition() { return columnDefinition; }

        public void execute(Table table, Schema schema)
        {
            System.out.println("Adding " + columnDefinition);
            table.addColumn(columnDefinition);
        }

        @Override
        public String toString()
        {
            return "ADD COLUMN " + columnDefinition;
        }
    }

    public static class ChangeColumnAction extends Action
    {
        private String oldName;
        private Column columnDefinition;

        public void setOldName(String v) { this.oldName = v; }
        public String getOldName() { return oldName; }

        public void setColumnDefinition(Column v) { this.columnDefinition = v; }
        public Column getColumnDefinition() { return columnDefinition; }

        public void execute(Table table, Schema schema)
        {
            System.out.println("Changing " + columnDefinition);
            table.removeColumn(oldName);
            table.addColumn(columnDefinition);
        }

        @Override
        public String toString()
        {
            return "CHANGE COLUMN " + oldName + " " + columnDefinition;
        }
    }

    public static class ModifyColumnAction extends Action
    {
        private Column columnDefinition;

        public void setColumnDefinition(Column v) { this.columnDefinition = v; }
        public Column getColumnDefinition() { return columnDefinition; }

        public void execute(Table table, Schema schema)
        {
            System.out.println("Modifying " + columnDefinition);
            table.addColumn(columnDefinition);
        }

        @Override
        public String toString()
        {
            return "MODIFY COLUMN " + columnDefinition;
        }
    }

    public static class DropColumnAction extends Action
    {
        private String name;

        public void setName(String v) { this.name = v; }
        public String getName() { return name; }

        public void execute(Table table, Schema schema)
        {
            table.removeColumn(name);
        }

        @Override
        public String toString()
        {
            return "DROP COLUMN " + name;
        }
    }

    public static class AlterColumnAction extends Action
    {
        @Override
        public String toString()
        {
            return "ALTER COLUMN ";
        }
    }

    public static class RenameTableAction extends Action
    {
        private String newName;

        public void setNewName(String v) { this.newName = v; }
        public String getNewName() { return newName; }

        public void execute(Table table, Schema schema)
        {
            System.out.println("Renaming " + table.getName());
            table.setName(newName);
            schema.removeTable(table);
            schema.addTable(table);
        }

        @Override
        public String toString()
        {
            return "RENAME TABLE TO " + newName;
        }
    }

    private String tableName;
    private List<Action> actions;

    public AlterTableStatement()
    {
        this.actions = new ArrayList<>();
    }

    public void addAction(Action action)
    {
        actions.add(action);
    }

    public List<Action> getActions() { return actions; }

    public void setTableName(String v) { this.tableName = v; }
    public String getTableName() { return tableName; }

    public void print()
    {
        System.out.println("ALTER TABLE " + tableName);
        for (Action action : actions) {
            System.out.println(action);
        }
    }

    @Override
    public void execute(Schema schema)
    {
        Table table = schema.getTable(tableName);
        if (table == null) {
            throw new RuntimeException("Table " + tableName + " not found");
        }

        for (Action action : actions) {
            action.execute(table, schema);
        }
    }
}
