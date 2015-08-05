package com.znaptag.cesium.schema;

public class TypeSpec
{
    private MySQLType type;

    public TypeSpec(MySQLType type)
    {
        this.type = type;
    }

    public void setType(MySQLType v) { this.type = v; }
    public MySQLType getType() { return type; }

    @Override
    public String toString()
    {
        return type.toString();
    }
}
