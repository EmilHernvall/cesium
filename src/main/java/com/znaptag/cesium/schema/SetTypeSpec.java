package com.znaptag.cesium.schema;

import java.util.List;
import java.util.ArrayList;
import java.util.regex.*;

public class SetTypeSpec extends TypeSpec
{
    private List<String> stringList;

    public SetTypeSpec(MySQLType type)
    {
        super(type);

        this.stringList = new ArrayList<>();
    }

    @Override
    public void setFromTypeString(String typeString)
    {
        Pattern p = Pattern.compile("^([A-Za-z0-9]+)\\(([^)]+)\\)$");
        Matcher m = p.matcher(typeString);

        MySQLType type = null;
        if (m.matches()) {
            String typeName = m.group(1);
            String params = m.group(2);

            Pattern p2 = Pattern.compile("(\"([^\"]*)\"|('[^']*'))\\s*,?");
            Matcher m2 = p2.matcher(params);
            int idx = 0;
            while (m2.find(idx)) {
                String res = m2.group(2);
                if (res == null) {
                    res = m2.group(3);
                }
                stringList.add(res.substring(1, res.length()-1));
                idx += m2.group(0).length();
            }
        }
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
