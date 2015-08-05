package com.znaptag.cesium.schema;

import java.util.List;
import java.util.ArrayList;

public class Index
{
    public static class Part
    {
        private String name = null;
        private int length = 0;

        public Part()
        {
        }

        public void setName(String v) { this.name = v; }
        public String getName() { return name; }

        public void setLength(int v) { this.length = v; }
        public int getLength() { return length; }

        @Override
        public String toString()
        {
            return name + (length != 0 ? " (" + length + ")" : "");
        }
    }

    private String name;
    private boolean unique = false;
    private List<Part> parts;

    public Index()
    {
        parts = new ArrayList<>();
    }

    public void setName(String v) { this.name = v; }
    public String getName() { return name; }

    public void setUnique(boolean v) { this.unique = v; }
    public boolean getUnique() { return unique; }

    public void addPart(String name, int length)
    {
        Part part = new Part();
        part.setName(name);
        part.setLength(length);
        parts.add(part);
    }

    @Override
    public String toString()
    {
        StringBuilder buffer = new StringBuilder();
        if (name == null) {
            buffer.append("PRIMARY KEY ");
        } else {
            buffer.append((unique ? "UNIQUE " : "INDEX ") + name);
        }

        buffer.append("(");

        String delim = "";
        for (Part part : parts) {
            buffer.append(delim);
            buffer.append(part);

            delim = ", ";
        }

        buffer.append(")");

        return buffer.toString();
    }
}
