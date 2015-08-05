package com.znaptag.cesium;

import java.util.EnumSet;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import com.znaptag.cesium.parser.*;

public class Cesium
{
    public enum MySQLType
    {
        INTEGER,
        TINYINT,
        SMALLINT,
        MEDIUMINT,
        BIGINT,
        REAL,
        DOUBLE,
        FLOAT,
        BIT,
        BOOLEAN,
        CHAR,
        NCHAR,
        BINARY,
        VARCHAR,
        NVARCHAR,
        VARBINARY,
        YEAR,
        DATE,
        TIME,
        TIMESTAMP,
        DATETIME,
        TINYBLOB,
        BLOB,
        MEDIUMBLOB,
        LONGBLOB,
        TINYTEXT,
        TEXT,
        MEDIUMTEXT,
        LONGTEXT,
        DECIMAL,
        NUMERIC,
        FIXED,
        ENUM,
        SET,
        LONG,
        SERIAL,
        GEOMETRY,
        GEOMETRYCOLLECTION,
        POINT,
        MULTIPOINT,
        LINESTRING,
        MULTILINESTRING,
        POLYGON,
        MULTIPOLYGON;
    }

    public static class ListenerImpl extends MySQLBaseListener
    {
        public enum Mode
        {
            CREATE_TABLE;
        }

        private Mode currentMode = null;
        private MySQLType currentType = null;

        @Override
        public void visitErrorNode(ErrorNode node)
        {
            System.out.println("Error!");
        }

        @Override
        public void enterCreateTable(MySQLParser.CreateTableContext ctx)
        {
            System.out.println("CREATE TABLE");
            currentMode = Mode.CREATE_TABLE;
        }

        @Override
        public void exitCreateTable(MySQLParser.CreateTableContext ctx)
        {
            System.out.println("EXIT CREATE TABLE");
            currentMode = null;
        }

        @Override
        public void enterTableName(MySQLParser.TableNameContext ctx)
        {
            System.out.println("TABLE NAME " + ctx.getText());
        }

        @Override
        public void enterFieldName(MySQLParser.FieldNameContext ctx)
        {
            System.out.println("FIELD NAME " + ctx.getText());
        }

        /*@Override
        public void enterField_option(MySQLParser.Field_optionContext ctx)
        {
            System.out.println("FIELD OPTION " + ctx.getText());
        }*/

        @Override
        public void enterAttribute(MySQLParser.AttributeContext ctx)
        {
            System.out.println("ATTRIBUTE " + ctx.getText());
        }

        @Override
        public void enterCreate_table_option(MySQLParser.Create_table_optionContext ctx)
        {
            System.out.println("TABLE OPTION " + ctx.getText());
        }

        /*
         * Type
         **/

        @Override
        public void enterIntType(MySQLParser.IntTypeContext ctx)
        {
            currentType = MySQLType.INTEGER;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterRealType(MySQLParser.RealTypeContext ctx)
        {
            currentType = MySQLType.REAL;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterFloatType(MySQLParser.FloatTypeContext ctx)
        {
            currentType = MySQLType.FLOAT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBitType(MySQLParser.BitTypeContext ctx)
        {
            currentType = MySQLType.BIT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBitTypeWithLength(MySQLParser.BitTypeWithLengthContext ctx)
        {
            currentType = MySQLType.BIT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBoolType(MySQLParser.BoolTypeContext ctx)
        {
            currentType = MySQLType.BOOLEAN;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBooleanType(MySQLParser.BooleanTypeContext ctx)
        {
            currentType = MySQLType.BOOLEAN;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterCharTypeWithLength(MySQLParser.CharTypeWithLengthContext ctx)
        {
            currentType = MySQLType.CHAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterCharType(MySQLParser.CharTypeContext ctx)
        {
            currentType = MySQLType.CHAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterNCharTypeWithLength(MySQLParser.NCharTypeWithLengthContext ctx)
        {
            currentType = MySQLType.NCHAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterNCharType(MySQLParser.NCharTypeContext ctx)
        {
            currentType = MySQLType.NCHAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBinaryTypeWithLength(MySQLParser.BinaryTypeWithLengthContext ctx)
        {
            currentType = MySQLType.BINARY;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBinaryType(MySQLParser.BinaryTypeContext ctx)
        {
            currentType = MySQLType.BINARY;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterVarcharTypeWithLength(MySQLParser.VarcharTypeWithLengthContext ctx)
        {
            currentType = MySQLType.VARCHAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterNVarcharTypeWithLength(MySQLParser.NVarcharTypeWithLengthContext ctx)
        {
            currentType = MySQLType.NVARCHAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterVarbinaryTypeWithLength(MySQLParser.VarbinaryTypeWithLengthContext ctx)
        {
            currentType = MySQLType.VARBINARY;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterYearType(MySQLParser.YearTypeContext ctx)
        {
            currentType = MySQLType.YEAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterDateType(MySQLParser.DateTypeContext ctx)
        {
            currentType = MySQLType.DATE;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterTimeType(MySQLParser.TimeTypeContext ctx)
        {
            currentType = MySQLType.TIME;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterTimestampType(MySQLParser.TimestampTypeContext ctx)
        {
            currentType = MySQLType.TIMESTAMP;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterDateTimeType(MySQLParser.DateTimeTypeContext ctx)
        {
            currentType = MySQLType.DATETIME;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterTinyBlobType(MySQLParser.TinyBlobTypeContext ctx)
        {
            currentType = MySQLType.TINYBLOB;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBlobType(MySQLParser.BlobTypeContext ctx)
        {
            currentType = MySQLType.BLOB;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterMediumBlobType(MySQLParser.MediumBlobTypeContext ctx)
        {
            currentType = MySQLType.MEDIUMBLOB;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterLongBlobType(MySQLParser.LongBlobTypeContext ctx)
        {
            currentType = MySQLType.LONGBLOB;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterLongVarbinaryType(MySQLParser.LongVarbinaryTypeContext ctx)
        {
            currentType = MySQLType.VARBINARY;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterLongVarcharType(MySQLParser.LongVarcharTypeContext ctx)
        {
            currentType = MySQLType.VARCHAR;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterTinyTextType(MySQLParser.TinyTextTypeContext ctx)
        {
            currentType = MySQLType.TINYTEXT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterTextType(MySQLParser.TextTypeContext ctx)
        {
            currentType = MySQLType.TEXT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterMediumTextType(MySQLParser.MediumTextTypeContext ctx)
        {
            currentType = MySQLType.MEDIUMTEXT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterLongTextType(MySQLParser.LongTextTypeContext ctx)
        {
            currentType = MySQLType.LONGTEXT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterDecimalType(MySQLParser.DecimalTypeContext ctx)
        {
            currentType = MySQLType.DECIMAL;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterNumericType(MySQLParser.NumericTypeContext ctx)
        {
            currentType = MySQLType.NUMERIC;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterFixedType(MySQLParser.FixedTypeContext ctx)
        {
            currentType = MySQLType.FIXED;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterEnumType(MySQLParser.EnumTypeContext ctx)
        {
            currentType = MySQLType.ENUM;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterSetType(MySQLParser.SetTypeContext ctx)
        {
            currentType = MySQLType.SET;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterLongType(MySQLParser.LongTypeContext ctx)
        {
            currentType = MySQLType.LONG;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterSerialType(MySQLParser.SerialTypeContext ctx)
        {
            currentType = MySQLType.SERIAL;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterGeometryType(MySQLParser.GeometryTypeContext ctx)
        {
            currentType = MySQLType.GEOMETRY;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterGeometryCollectionType(MySQLParser.GeometryCollectionTypeContext ctx)
        {
            currentType = MySQLType.GEOMETRYCOLLECTION;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterPointType(MySQLParser.PointTypeContext ctx)
        {
            currentType = MySQLType.POINT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterMultiPointType(MySQLParser.MultiPointTypeContext ctx)
        {
            currentType = MySQLType.MULTIPOINT;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterLineStringType(MySQLParser.LineStringTypeContext ctx)
        {
            currentType = MySQLType.LINESTRING;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterMultiLineStringType(MySQLParser.MultiLineStringTypeContext ctx)
        {
            currentType = MySQLType.MULTILINESTRING;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterPolygonType(MySQLParser.PolygonTypeContext ctx)
        {
            currentType = MySQLType.POLYGON;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterMultiPolygonType(MySQLParser.MultiPolygonTypeContext ctx)
        {
            currentType = MySQLType.MULTIPOLYGON;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterIntegerFieldLength(MySQLParser.IntegerFieldLengthContext ctx)
        {
            System.out.println("FIELD LENGTH " + ctx.getText());
        }

        @Override
        public void enterSignedFieldOption(MySQLParser.SignedFieldOptionContext ctx)
        {
            System.out.println("FIELD OPTION SIGNED");
        }

        @Override
        public void enterUnsignedFieldOption(MySQLParser.UnsignedFieldOptionContext ctx)
        {
            System.out.println("FIELD OPTION UNSIGNED");
        }

        @Override
        public void enterZeroFillFieldOption(MySQLParser.ZeroFillFieldOptionContext ctx)
        {
            System.out.println("FIELD OPTION ZEROFILL");
        }
    }

    public static void main(String[] args)
    throws Exception
    {
        // Get our lexer
        MySQLLexer lexer = new MySQLLexer(new ANTLRInputStream(System.in));

        // Get a list of matched tokens
        CommonTokenStream tokens = new CommonTokenStream(lexer);

        // Pass the tokens to the parser
        MySQLParser parser = new MySQLParser(tokens);

        // Specify our entry point
        MySQLParser.QueryContext ctx = parser.query();

        // Walk it and attach our listener
        ParseTreeWalker walker = new ParseTreeWalker();
        ListenerImpl listener = new ListenerImpl();
        walker.walk(listener, ctx);
    }
}
