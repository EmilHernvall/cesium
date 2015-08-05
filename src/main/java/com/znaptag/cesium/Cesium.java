package com.znaptag.cesium;

import java.util.EnumSet;
import java.util.List;
import java.util.ArrayList;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import com.znaptag.cesium.parser.*;
import com.znaptag.cesium.schema.*;

public class Cesium
{
    public static class ListenerImpl extends MySQLBaseListener
    {
        public enum Mode
        {
            CREATE_TABLE;
        }

        private Mode currentMode = null;

        private MySQLType currentType = null;
        private TypeSpec currentTypeSpec = null;
        private IntegerTypeSpec currentIntegerTypeSpec = null;
        private CharTypeSpec currentCharTypeSpec = null;
        private SetTypeSpec currentSetTypeSpec = null;

        private Table currentTable = null;
        private Column currentColumn = null;
        private Index currentIndex = null;

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
            currentTable = new Table();
        }

        @Override
        public void exitCreateTable(MySQLParser.CreateTableContext ctx)
        {
            System.out.println("EXIT CREATE TABLE");
            currentTable.print();

            currentMode = null;
            currentTable = null;
        }

        @Override
        public void enterTableName(MySQLParser.TableNameContext ctx)
        {
            System.out.println("TABLE NAME " + ctx.getText());
            currentTable.setName(ctx.getText());
        }

        @Override
        public void enterColumn_def(MySQLParser.Column_defContext ctx)
        {
            System.out.println("COLUMN DEF");
            currentColumn = new Column();
        }

        @Override
        public void exitColumn_def(MySQLParser.Column_defContext ctx)
        {
            if (currentTypeSpec != null) {
                currentColumn.setTypeSpec(currentTypeSpec);
            } else {
                currentColumn.setTypeSpec(new TypeSpec(currentType));
            }
            currentTable.addColumn(currentColumn);
            currentIntegerTypeSpec = null;
            currentCharTypeSpec = null;
            currentTypeSpec = null;
            currentColumn = null;
        }

        @Override
        public void enterKey_def(MySQLParser.Key_defContext ctx)
        {
            System.out.println("KEY DEF");
            currentIndex = new Index();
        }

        @Override
        public void enterKeyPart(MySQLParser.KeyPartContext ctx)
        {
            System.out.println("KEY PART " + ctx.getText());
            currentIndex.addPart(ctx.getText(), 0);
        }

        @Override
        public void enterKeyPartWithLength(MySQLParser.KeyPartWithLengthContext ctx)
        {
            System.out.println("KEY PART WITH LENGTH " + ctx.getText());
        }

        @Override
        public void exitKey_def(MySQLParser.Key_defContext ctx)
        {
            currentTable.addIndex(currentIndex);
            currentIndex = null;
        }

        @Override
        public void enterFieldName(MySQLParser.FieldNameContext ctx)
        {
            System.out.println("FIELD NAME " + ctx.getText());
            if (currentColumn != null) {
                currentColumn.setName(ctx.getText());
            } else if (currentIndex != null) {
                currentIndex.setName(ctx.getText());
            }
        }

        /*@Override
        public void enterField_option(MySQLParser.Field_optionContext ctx)
        {
            System.out.println("FIELD OPTION " + ctx.getText());
        }*/

        @Override
        public void enterCreate_table_option(MySQLParser.Create_table_optionContext ctx)
        {
            System.out.println("TABLE OPTION " + ctx.getText());
        }

        /*
         * Type
         **/

        @Override
        public void enterIntegerType(MySQLParser.IntegerTypeContext ctx)
        {
            currentType = MySQLType.INTEGER;
            currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
            currentTypeSpec = currentIntegerTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterTinyIntType(MySQLParser.TinyIntTypeContext ctx)
        {
            currentType = MySQLType.TINYINT;
            currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
            currentTypeSpec = currentIntegerTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterSmallIntType(MySQLParser.SmallIntTypeContext ctx)
        {
            currentType = MySQLType.SMALLINT;
            currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
            currentTypeSpec = currentIntegerTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterMediumIntType(MySQLParser.MediumIntTypeContext ctx)
        {
            currentType = MySQLType.MEDIUMINT;
            currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
            currentTypeSpec = currentIntegerTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBigIntType(MySQLParser.BigIntTypeContext ctx)
        {
            currentType = MySQLType.BIGINT;
            currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
            currentTypeSpec = currentIntegerTypeSpec;

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
            currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
            currentTypeSpec = currentIntegerTypeSpec;
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
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterCharType(MySQLParser.CharTypeContext ctx)
        {
            currentType = MySQLType.CHAR;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterNCharTypeWithLength(MySQLParser.NCharTypeWithLengthContext ctx)
        {
            currentType = MySQLType.NCHAR;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterNCharType(MySQLParser.NCharTypeContext ctx)
        {
            currentType = MySQLType.NCHAR;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBinaryTypeWithLength(MySQLParser.BinaryTypeWithLengthContext ctx)
        {
            currentType = MySQLType.BINARY;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterBinaryType(MySQLParser.BinaryTypeContext ctx)
        {
            currentType = MySQLType.BINARY;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterVarcharTypeWithLength(MySQLParser.VarcharTypeWithLengthContext ctx)
        {
            currentType = MySQLType.VARCHAR;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterNVarcharTypeWithLength(MySQLParser.NVarcharTypeWithLengthContext ctx)
        {
            currentType = MySQLType.NVARCHAR;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterVarbinaryTypeWithLength(MySQLParser.VarbinaryTypeWithLengthContext ctx)
        {
            currentType = MySQLType.VARBINARY;
            currentCharTypeSpec = new CharTypeSpec(currentType);
            currentTypeSpec = currentCharTypeSpec;

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
            currentSetTypeSpec = new SetTypeSpec(currentType);
            currentTypeSpec = currentSetTypeSpec;
            System.out.println("TYPE " + currentType);
        }

        @Override
        public void enterSetType(MySQLParser.SetTypeContext ctx)
        {
            currentType = MySQLType.SET;
            currentSetTypeSpec = new SetTypeSpec(currentType);
            currentTypeSpec = currentSetTypeSpec;
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
            String txt = ctx.getText();
            String noParen = txt.substring(1, txt.length()-1);
            int length = Integer.parseInt(noParen);

            if (currentIntegerTypeSpec != null) {
                currentIntegerTypeSpec.setLength(length);
            } else if (currentCharTypeSpec != null) {
                currentCharTypeSpec.setLength(length);
            }
        }

        // Field Attributes

        @Override
        public void enterNullAttribute(MySQLParser.NullAttributeContext ctx)
        {
        }

        @Override
        public void enterNotNullAttribute(MySQLParser.NotNullAttributeContext ctx)
        {
            currentColumn.setAllowNull(false);
        }

        @Override
        public void enterDefaultAttribute(MySQLParser.DefaultAttributeContext ctx)
        {
        }

        @Override
        public void enterCurrentTimeDefault(MySQLParser.CurrentTimeDefaultContext ctx)
        {
            currentColumn.setDefaultValue("CURRENT_TIME");
        }

        @Override
        public void enterSpecifiedDefault(MySQLParser.SpecifiedDefaultContext ctx)
        {
            currentColumn.setDefaultValue(ctx.getText());
        }

        @Override
        public void enterOnUpdateAttribute(MySQLParser.OnUpdateAttributeContext ctx)
        {
        }

        @Override
        public void enterAutoIncAttribute(MySQLParser.AutoIncAttributeContext ctx)
        {
            if (currentIntegerTypeSpec == null) {
                throw new RuntimeException("ERROR 1063 (42000): Incorrect column specifier");
            }
            currentColumn.setAutoIncrement(true);
        }

        @Override
        public void enterSerialDefaultValueAttribute(MySQLParser.SerialDefaultValueAttributeContext ctx)
        {
            currentColumn.setAllowNull(false);
            currentColumn.setAutoIncrement(true);
            currentColumn.setUniqueKey(true);
        }

        @Override
        public void enterPrimaryKeyAttribute(MySQLParser.PrimaryKeyAttributeContext ctx)
        {
            currentColumn.setPrimaryKey(true);
        }

        @Override
        public void enterUniqueKeyAttribute(MySQLParser.UniqueKeyAttributeContext ctx)
        {
            currentColumn.setUniqueKey(true);
        }

        @Override
        public void enterCommentAttribute(MySQLParser.CommentAttributeContext ctx)
        {
        }

        @Override
        public void enterCommentText(MySQLParser.CommentTextContext ctx)
        {
            currentColumn.setComment(ctx.getText());
        }

        @Override
        public void enterCollateAttribute(MySQLParser.CollateAttributeContext ctx)
        {
        }

        @Override
        public void enterCollationName(MySQLParser.CollationNameContext ctx)
        {
            currentColumn.setCollate(ctx.getText());
        }

        // Numeric Field Options

        @Override
        public void enterSignedFieldOption(MySQLParser.SignedFieldOptionContext ctx)
        {
            System.out.println("FIELD OPTION SIGNED");
        }

        @Override
        public void enterUnsignedFieldOption(MySQLParser.UnsignedFieldOptionContext ctx)
        {
            System.out.println("FIELD OPTION UNSIGNED");
            currentIntegerTypeSpec.setSigned(false);
        }

        @Override
        public void enterZeroFillFieldOption(MySQLParser.ZeroFillFieldOptionContext ctx)
        {
            System.out.println("FIELD OPTION ZEROFILL");
            currentIntegerTypeSpec.setZeroFill(true);
            currentIntegerTypeSpec.setSigned(false); // incompatible with zerofill
        }

        // Text/Binary field options
        //
        // This is messy because the grammar is messy. Here's an overview:
        //
        // NoCharset
        // AsciiCharset [ AsciiText | AsciiBinary ]
        // UnicodeCharset [ UnicodeText | UnicodeBinary ]
        // SpecifiedCharset [ CharsetName | BinaryCharset ]
        //                  [ NoCharsetModifier | BinaryCharsetModifier ]
        // BinaryNoCharset
        // BinaryWithCharset [ CharsetName | BinaryCharset ]

        // NoCharset
        @Override
        public void enterNoCharset(MySQLParser.NoCharsetContext ctx)
        {
            System.out.println("NO CHARSET");
        }

        // AsciiCharset
        @Override
        public void enterAsciiCharset(MySQLParser.AsciiCharsetContext ctx)
        {
            System.out.println("ASCII CHARSET");
        }

        @Override
        public void enterAsciiText(MySQLParser.AsciiTextContext ctx)
        {
            System.out.println("TEXT ASCII");
        }

        @Override
        public void enterAsciiBinary(MySQLParser.AsciiBinaryContext ctx)
        {
            System.out.println("BINARY ASCII");
        }

        // UnicodeCharset
        @Override
        public void enterUnicodeCharset(MySQLParser.UnicodeCharsetContext ctx)
        {
            System.out.println("UNICODE CHARSET");
        }

        @Override
        public void enterUnicodeText(MySQLParser.UnicodeTextContext ctx)
        {
            System.out.println("TEXT UNICODE");
        }

        @Override
        public void enterUnicodeBinary(MySQLParser.UnicodeBinaryContext ctx)
        {
            System.out.println("BINARY UNICODE");
        }

        @Override
        public void enterBinaryCharsetModifier(MySQLParser.BinaryCharsetModifierContext ctx)
        {
            System.out.println("BINARY CHARSET MODIFIER");
        }

        // SpecifiedCharset
        @Override
        public void enterSpecifiedCharset(MySQLParser.SpecifiedCharsetContext ctx)
        {
            System.out.println("SPECIFIED CHARSET");
        }

        @Override
        public void enterCharsetName(MySQLParser.CharsetNameContext ctx)
        {
            System.out.println("CHARSET NAME: " + ctx.getText());
        }

        @Override
        public void enterBinaryCharset(MySQLParser.BinaryCharsetContext ctx)
        {
            System.out.println("CHARSET NAME: BINARY");
        }

        // BinaryNoCharset
        @Override
        public void enterBinaryNoCharset(MySQLParser.BinaryNoCharsetContext ctx)
        {
            System.out.println("BINARY NO CHARSET");
        }

        // BinaryWithCharset
        @Override
        public void enterBinaryWithCharset(MySQLParser.BinaryWithCharsetContext ctx)
        {
            System.out.println("BINARY CHARSET");
        }

        @Override
        public void enterTextString(MySQLParser.TextStringContext ctx)
        {
            if (currentSetTypeSpec != null) {
                currentSetTypeSpec.addString(ctx.getText());
            }
        }

        @Override
        public void enterTextStringHex(MySQLParser.TextStringHexContext ctx)
        {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override
        public void enterTextStringBin(MySQLParser.TextStringBinContext ctx)
        {
            throw new UnsupportedOperationException("Not implemented");
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
