package com.znaptag.cesium.schema;

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
    public String getName() { return name; }

    public void setTypeSpec(TypeSpec v) { this.typeSpec = v; }
    public TypeSpec getTypeSpec() { return typeSpec; }

    public void setAllowNull(boolean v) { this.allowNull = v; }
    public boolean getAllowNull() { return allowNull; }

    public void setDefaultValue(String v) { this.defaultValue = v; }
    public String getDefaultValue() { return defaultValue; }

    public void setAutoIncrement(boolean v) { this.autoIncrement = v; }
    public boolean getAutoIncrement() { return autoIncrement; }

    public void setPrimaryKey(boolean v) { this.primaryKey = v; }
    public boolean getPrimaryKey() { return primaryKey; }

    public void setUniqueKey(boolean v) { this.uniqueKey = v; }
    public boolean getUniqueKey() { return uniqueKey; }

    public void setComment(String v) { this.comment = v; }
    public String getComment() { return comment; }

    public void setCollate(String v) { this.collate = v; }
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
}
