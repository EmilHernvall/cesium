package com.znaptag.cesium.schema;

import java.util.regex.*;

public class CharTypeSpec extends TypeSpec
{
    private int length = 0;

    public CharTypeSpec(MySQLType type)
    {
        super(type);
    }

    @Override
    public void setFromTypeString(String typeString)
    {
        Pattern p = Pattern.compile("^([A-Za-z0-9]+)\\(([^)]+)\\)$");
        Matcher m = p.matcher(typeString);

        MySQLType type = null;
        if (m.matches()) {
            String typeName = m.group(1);
            setLength(Integer.parseInt(m.group(2)));
        }
    }

    public void setLength(int v) { this.length = v; }
    public int getLength() { return length; }

    @Override
    public String toString()
    {
        return super.toString() + " (" + length + ")";
    }
}
