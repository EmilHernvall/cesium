package com.znaptag.cesium.schema;

public enum MySQLType
{
    INTEGER (IntegerTypeSpec.class),
    TINYINT (IntegerTypeSpec.class),
    SMALLINT (IntegerTypeSpec.class),
    MEDIUMINT (IntegerTypeSpec.class),
    BIGINT (IntegerTypeSpec.class),
    REAL (TypeSpec.class),
    DOUBLE (TypeSpec.class),
    FLOAT (TypeSpec.class),
    BIT (TypeSpec.class),
    CHAR (CharTypeSpec.class),
    NCHAR (CharTypeSpec.class),
    BINARY (CharTypeSpec.class),
    VARCHAR (CharTypeSpec.class),
    NVARCHAR (CharTypeSpec.class),
    VARBINARY (CharTypeSpec.class),
    YEAR (TypeSpec.class),
    DATE (TypeSpec.class),
    TIME (TypeSpec.class),
    TIMESTAMP (TypeSpec.class),
    DATETIME (TypeSpec.class),
    TINYBLOB (TypeSpec.class),
    BLOB (TypeSpec.class),
    MEDIUMBLOB (TypeSpec.class),
    LONGBLOB (TypeSpec.class),
    TINYTEXT (TypeSpec.class),
    TEXT (TypeSpec.class),
    MEDIUMTEXT (TypeSpec.class),
    LONGTEXT (TypeSpec.class),
    DECIMAL (TypeSpec.class),
    NUMERIC (TypeSpec.class),
    FIXED (TypeSpec.class),
    ENUM (SetTypeSpec.class),
    SET (SetTypeSpec.class),
    LONG (TypeSpec.class),
    SERIAL (TypeSpec.class),
    GEOMETRY (TypeSpec.class),
    GEOMETRYCOLLECTION (TypeSpec.class),
    POINT (TypeSpec.class),
    MULTIPOINT (TypeSpec.class),
    LINESTRING (TypeSpec.class),
    MULTILINESTRING (TypeSpec.class),
    POLYGON (TypeSpec.class),
    MULTIPOLYGON (TypeSpec.class);

    private Class<? extends TypeSpec> typeSpecClass;

    private MySQLType(Class<? extends TypeSpec> typeSpecClass)
    {
        this.typeSpecClass = typeSpecClass;
    }

    public Class<? extends TypeSpec> getTypeSpecClass()
    {
        return typeSpecClass;
    }

    public static MySQLType fromString(String str)
    {
        if ("int".equalsIgnoreCase(str)) {
            return MySQLType.INTEGER;
        }

        for (MySQLType type : MySQLType.values()) {
            if (str.equalsIgnoreCase(type.toString())) {
                return type;
            }
        }

        return null;
    }
}
