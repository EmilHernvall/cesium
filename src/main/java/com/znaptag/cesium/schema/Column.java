package com.znaptag.cesium.schema;

import java.util.ArrayList;
import java.util.List;

import com.znaptag.cesium.statement.AlterTableStatement.Action;
import com.znaptag.cesium.statement.AlterTableStatement.ModifyColumnAction;
import com.znaptag.cesium.statement.Statement;

public class Column
{
    private String name = null;
    private TypeSpec typeSpec = null;
    private boolean allowNull = true;
    private String defaultValue = null;
    private boolean autoIncrement = false;
    private boolean primaryKey = false;
    private boolean uniqueKey = false;
    private String comment = null;
    private String collate = null;

    public Column()
    {
    }

    public void setName(String v) { this.name = v; }
    public Column withName(String v) { this.name = v; return this; }
    public String getName() { return name; }

    public void setTypeSpec(TypeSpec v) { this.typeSpec = v; }
    public Column withTypeSpec(TypeSpec v) { this.typeSpec = v; return this; }
    public TypeSpec getTypeSpec() { return typeSpec; }

    public void setAllowNull(boolean v) { this.allowNull = v; }
    public Column withAllowNull(boolean v) { this.allowNull = v; return this; }
    public boolean getAllowNull() { return allowNull; }

    public void setDefaultValue(String v) { this.defaultValue = v; }
    public Column withDefaultValue(String v) { this.defaultValue = v; return this; }
    public String getDefaultValue() { return defaultValue; }

    public void setAutoIncrement(boolean v) { this.autoIncrement = v; }
    public Column withAutoIncrement(boolean v) { this.autoIncrement = v; return this; }
    public boolean getAutoIncrement() { return autoIncrement; }

    public void setPrimaryKey(boolean v) { this.primaryKey = v; }
    public Column withPrimaryKey(boolean v) { this.primaryKey = v; return this; }
    public boolean getPrimaryKey() { return primaryKey; }

    public void setUniqueKey(boolean v) { this.uniqueKey = v; }
    public Column withUniqueKey(boolean v) { this.uniqueKey = v; return this; }
    public boolean getUniqueKey() { return uniqueKey; }

    public void setComment(String v) { this.comment = v; }
    public Column withComment(String v) { this.comment = v; return this; }
    public String getComment() { return comment; }

    public void setCollate(String v) { this.collate = v; }
    public Column withCollate(String v) { this.collate = v; return this; }
    public String getCollate() { return collate; }

    @Override
    public String toString()
    {
        return name + " " + typeSpec +
            (allowNull ? "" : " NOT NULL") +
            (defaultValue != null ? " DEFAULT " + defaultValue : "") +
            (comment != null ? " COMMENT " + comment : "") +
            (collate != null ? " COLLATE " + collate : "");
    }

    public Action differenceTo(Column otherColumn)
    {
        boolean changed = false;

        if (!typeSpec.equals(otherColumn.typeSpec)) {
            //System.out.println("\t\tTYPE: " + typeSpec + " => " + otherColumn.typeSpec);
            changed = true;
        }

        if (allowNull != otherColumn.allowNull) {
            //System.out.println("\t\tNULL: " + allowNull + " => " + otherColumn.allowNull);
            changed = true;
        }

        //if (defaultValue != null && !defaultValue.equals(otherColumn.defaultValue)) {
        //    System.out.println("\t\tDEFAULT: " + defaultValue + " => " + otherColumn.defaultValue);
        //}

        if (autoIncrement != otherColumn.autoIncrement) {
            //System.out.println("\t\tAUTOINCREMENT: " + autoIncrement + " => " + otherColumn.autoIncrement);
            changed = true;
        }

        if (primaryKey != otherColumn.primaryKey) {
            //System.out.println("\t\tPRIMARYKEY: " + primaryKey + " => " + otherColumn.primaryKey);
            changed = true;
        }

        if (uniqueKey != otherColumn.uniqueKey) {
            //System.out.println("\t\tUNIQUEKEY: " + primaryKey + " => " + otherColumn.primaryKey);
            changed = true;
        }

        if (comment != null && !comment.equals(otherColumn.comment)) {
            //System.out.println("\t\tCOMMENT: " + comment + " => " + otherColumn.comment);
            changed = true;
        }

        if (collate != null && !collate.equals(otherColumn.collate)) {
            //System.out.println("\t\tCOLLATE: " + collate + " => " + otherColumn.collate);
            changed = true;
        }

        List<Statement> ddl = new ArrayList<>();
        if (changed) {
            ModifyColumnAction action = new ModifyColumnAction();
            action.setColumnDefinition(otherColumn);
            return action;
        }

        return null;
    }
}
