package com.znaptag.cesium.schema;

public class CharTypeSpec extends TypeSpec
{
    private int length = 0;

    public CharTypeSpec(MySQLType type)
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
