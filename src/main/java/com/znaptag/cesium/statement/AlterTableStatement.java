package com.znaptag.cesium.statement;

import java.util.List;
import java.util.ArrayList;

import com.znaptag.cesium.schema.*;

public class AlterTableStatement implements Statement
{
    public static class Action
    {
    }

    public static class AddColumnAction extends Action
    {
        private Column columnDefinition;

        public void setColumnDefinition(Column v) { this.columnDefinition = v; }
        public Column getColumnDefinition() { return columnDefinition; }

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

        @Override
        public String toString()
        {
            return "MODIFY COLUMN " + columnDefinition;
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

    public void setTableName(String v) { this.tableName = v; }
    public String getTableName() { return tableName; }

    public void print()
    {
        System.out.println("ALTER TABLE " + tableName);
        for (Action action : actions) {
            System.out.println(action);
        }
    }
}
