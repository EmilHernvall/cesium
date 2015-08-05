package com.znaptag.cesium.schema;

public class IntegerTypeSpec extends TypeSpec
{
    private int length = 0;

    public IntegerTypeSpec(MySQLType type)
    {
        super(type);
    }

    public void setLength(int v) { this.length = v; }
    public int getLength() { return length; }

    @Override
    public String toString()
    {
        return super.toString() + " (" + length + ")";
    }
}
