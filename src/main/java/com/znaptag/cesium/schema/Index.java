package com.znaptag.cesium.schema;

import java.util.List;
import java.util.ArrayList;

public class Index
{
    public enum KeyType
    {
        STANDARD,
        FULLTEXT,
        SPATIAL,
        PRIMARY,
        UNIQUE,
        FOREIGN;
    }

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

    private String name = null;
    private KeyType keyType = null;
    private List<Part> parts = null;
    private String algorithm = null;
    private String blockSize = null;
    private String comment = null;

    public Index()
    {
        parts = new ArrayList<>();
    }

    public void setName(String v) { this.name = v; }
    public Index withName(String v) { this.name = v; return this; }
    public String getName() { return name; }

    public void setKeyType(KeyType v) { this.keyType = v; }
    public Index withKeyType(KeyType v) { this.keyType = v; return this; }
    public KeyType getKeyType() { return keyType; }

    public void setAlgorithm(String v) { this.algorithm = v; }
    public Index withAlgorithm(String v) { this.algorithm = v; return this; }
    public String getAlgorithm() { return algorithm; }

    public void setBlockSize(String v) { this.blockSize = v; }
    public Index withBlockSize(String v) { this.blockSize = v; return this; }
    public String getBlockSize() { return blockSize; }

    public void setComment(String v) { this.comment = v; }
    public Index withComment(String v) { this.comment = v; return this; }
    public String getComment() { return comment; }

    public void addPart(String name, int length)
    {
        Part part = new Part();
        part.setName(name);
        part.setLength(length);
        parts.add(part);
    }

    public Index withPart(String name, int length)
    {
        addPart(name, length);
        return this;
    }

    @Override
    public String toString()
    {
        StringBuilder buffer = new StringBuilder();
        if (keyType == KeyType.PRIMARY) {
            buffer.append("PRIMARY KEY ");
        } else if (keyType == KeyType.UNIQUE) {
            buffer.append("UNIQUE " + name + " ");
        } else if (keyType == KeyType.FULLTEXT) {
            buffer.append("FULLTEXT " + name + " ");
        } else if (keyType == KeyType.SPATIAL) {
            buffer.append("SPATIAL " + name + " ");
        } else if (keyType == KeyType.FOREIGN) {
            buffer.append("SPATIAL " + name + " ");
        } else {
            buffer.append("INDEX " + name + " ");
        }

        if (algorithm != null) {
            buffer.append("USING " + algorithm + " ");
        }

        buffer.append("(");

        String delim = "";
        for (Part part : parts) {
            buffer.append(delim);
            buffer.append(part);

            delim = ", ";
        }

        buffer.append(")");

        if (blockSize != null) {
            buffer.append(" KEY_BLOCK_SIZE " + blockSize);
        }
        if (comment != null) {
            buffer.append(" COMMENT " + comment);
        }

        return buffer.toString();
    }
}
