package com.znaptag.cesium.schema;

import java.util.regex.*;

public class IntegerTypeSpec extends TypeSpec
{
    private int length = 0;
    private boolean signed = true;
    private boolean zerofill = false;

    public IntegerTypeSpec(MySQLType type)
    {
        super(type);
    }

    @Override
    public void setFromTypeString(String typeString)
    {
        Pattern p = Pattern.compile("^([A-Za-z0-9]+)\\(([^)]+)\\)( unsigned)?$");
        Matcher m = p.matcher(typeString);

        MySQLType type = null;
        if (m.matches()) {
            String typeName = m.group(1);
            setLength(Integer.parseInt(m.group(2)));
            String unsigned = m.group(3);
            if (" unsigned".equalsIgnoreCase(unsigned)) {
                setSigned(false);
            }
        }
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
