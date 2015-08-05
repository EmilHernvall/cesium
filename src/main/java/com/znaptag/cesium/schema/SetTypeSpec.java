package com.znaptag.cesium.schema;

import java.util.List;
import java.util.ArrayList;

public class SetTypeSpec extends TypeSpec
{
    private List<String> stringList;

    public SetTypeSpec(MySQLType type)
    {
        super(type);

        this.stringList = new ArrayList<>();
    }

    public void addString(String v)
    {
        stringList.add(v);
    }

    @Override
    public String toString()
    {
        StringBuilder buffer = new StringBuilder();
        buffer.append(super.toString());
        buffer.append(" (");

        String delim = "";
        for (String s : stringList) {
            buffer.append(delim);
            buffer.append(s);
            delim = ", ";
        }
        buffer.append(")");

        return buffer.toString();
    }
}
