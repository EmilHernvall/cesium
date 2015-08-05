package com.znaptag.cesium.schema;

public class IntegerTypeSpec extends TypeSpec
{
    private int length = 0;
    private boolean signed = true;
    private boolean zerofill = false;

    public IntegerTypeSpec(MySQLType type)
    {
        super(type);
    }

    public void setLength(int v) { this.length = v; }
    public int getLength() { return length; }

    public void setSigned(boolean v) { this.signed = v; }
    public boolean getSigned() { return signed; }

    public void setZeroFill(boolean v) { this.zerofill = v; }
    public boolean getZeroFill() { return zerofill; }

    @Override
    public String toString()
    {
        return super.toString() +  " (" + length + ")" +
            (signed ? "" : " UNSIGNED") +
            (zerofill ? " ZEROFILL" : "");
    }
}
