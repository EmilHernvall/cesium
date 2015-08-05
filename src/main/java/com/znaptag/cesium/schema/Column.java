package com.znaptag.cesium.schema;

public class Column
{
    private String name = null;
    private TypeSpec typeSpec = null;

    public Column()
    {
    }

    public void setName(String v) { this.name = v; }
    public String getName() { return name; }

    public void setTypeSpec(TypeSpec v) { this.typeSpec = v; }
    public TypeSpec getTypeSpec() { return typeSpec; }

    @Override
    public String toString()
    {
        return name + " " + typeSpec;
    }
}
