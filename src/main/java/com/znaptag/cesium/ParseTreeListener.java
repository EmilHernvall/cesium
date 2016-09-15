package com.znaptag.cesium;

import java.util.Map;
import java.util.HashMap;
import java.util.EnumSet;
import java.util.List;
import java.util.ArrayList;
import java.util.regex.*;
import java.io.FileInputStream;
import java.util.Scanner;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.atn.PredictionMode;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import com.znaptag.cesium.parser.*;
import com.znaptag.cesium.schema.*;
import com.znaptag.cesium.statement.*;

public class ParseTreeListener extends MySQLBaseListener
{
    public enum Mode
    {
        CREATE_TABLE,
        ALTER_TABLE,
        DROP_TABLE;
    }

    public enum AlterTableMode
    {
        ADD_COLUMN,
        CHANGE_COLUMN,
        MODIFY_COLUMN,
        RENAME_TABLE;
    }

    private Mode currentMode = null;

    private Statement currentStatement = null;
    private CreateTableStatement currentCreateTableStatement = null;

    private AlterTableMode currentAlterTableMode = null;
    private AlterTableStatement currentAlterTableStatement = null;
    private String oldColumnName = null;

    private Table currentTable = null;
    private Column currentColumn = null;
    private Index currentIndex = null;

    private MySQLType currentType = null;
    private TypeSpec currentTypeSpec = null;
    private IntegerTypeSpec currentIntegerTypeSpec = null;
    private CharTypeSpec currentCharTypeSpec = null;
    private SetTypeSpec currentSetTypeSpec = null;

    private boolean hasData = false;

    private Map<String, String> directives = null;
    private List<Statement> statements = null;

    public ParseTreeListener()
    {
        directives = new HashMap<>();
        statements = new ArrayList<>();
    }

    public List<Statement> getStatements() { return statements; }

    public Map<String, String> getDirectives() { return directives; }

    public boolean hasData() { return hasData; }

    public void reset()
    {
        hasData = false;
    }

    public void clean()
    {
        directives = new HashMap<>();
        statements = new ArrayList<>();
    }

    @Override
    public void visitErrorNode(ErrorNode node)
    {
        System.out.println("Error!");
    }

    @Override
    public void enterDirective(MySQLParser.DirectiveContext ctx)
    {
        hasData = true;

        String text = ctx.getText().substring(4);
        int pos = text.indexOf(":");
        if (pos == -1) {
            return;
        }

        String key = text.substring(0, pos).trim().toLowerCase();
        String value = text.substring(pos+1).trim();
        directives.put(key, value);
    }

    @Override
    public void enterStandardStatement(MySQLParser.StandardStatementContext ctx)
    {
        hasData = true;
    }

    @Override
    public void enterCreateTable(MySQLParser.CreateTableContext ctx)
    {
        currentMode = Mode.CREATE_TABLE;
        currentCreateTableStatement = new CreateTableStatement();
        currentStatement = currentCreateTableStatement;
        currentTable = new Table();
        currentTable.setName(normalizeTableName(ctx.table_ident().getText()));
    }

    @Override
    public void exitCreateTable(MySQLParser.CreateTableContext ctx)
    {
        currentCreateTableStatement.setTableDefinition(currentTable);

        statements.add(currentStatement);

        currentMode = null;
        currentTable = null;
        currentCreateTableStatement = null;
        currentStatement = null;
    }

    //
    // Alter table {{
    //

    @Override
    public void enterAlterTable(MySQLParser.AlterTableContext ctx)
    {
        currentMode = Mode.ALTER_TABLE;
        currentAlterTableStatement = new AlterTableStatement();
        currentAlterTableStatement.setTableName(normalizeTableName(ctx.table_name().getText()));
        currentStatement = currentAlterTableStatement;
    }

    @Override
    public void enterAddColumn(MySQLParser.AddColumnContext ctx)
    {
        currentAlterTableMode = AlterTableMode.ADD_COLUMN;
    }

    @Override
    public void exitAddColumn(MySQLParser.AddColumnContext ctx)
    {
        currentAlterTableMode = null;
    }

    @Override
    public void enterDropColumn(MySQLParser.DropColumnContext ctx)
    {
        AlterTableStatement.DropColumnAction action = new AlterTableStatement.DropColumnAction();
        action.setName(ctx.field_ident().getText());
        currentAlterTableStatement.addAction(action);
    }

    @Override
    public void enterChangeColumn(MySQLParser.ChangeColumnContext ctx)
    {
        currentAlterTableMode = AlterTableMode.CHANGE_COLUMN;
        currentColumn = new Column();
    }

    @Override
    public void enterChangeColumnName(MySQLParser.ChangeColumnNameContext ctx)
    {
        oldColumnName = ctx.getText();
    }

    @Override
    public void exitChangeColumn(MySQLParser.ChangeColumnContext ctx)
    {
        if (currentTypeSpec != null) {
            currentColumn.setTypeSpec(currentTypeSpec);
        } else {
            currentColumn.setTypeSpec(new TypeSpec(currentType));
        }

        AlterTableStatement.ChangeColumnAction action = new AlterTableStatement.ChangeColumnAction();
        action.setOldName(oldColumnName);
        action.setColumnDefinition(currentColumn);
        currentAlterTableStatement.addAction(action);

        currentIntegerTypeSpec = null;
        currentCharTypeSpec = null;
        currentTypeSpec = null;
        currentColumn = null;
        currentAlterTableMode = null;
    }

    @Override
    public void enterModifyColumn(MySQLParser.ModifyColumnContext ctx)
    {
        currentAlterTableMode = AlterTableMode.MODIFY_COLUMN;
        currentColumn = new Column();
    }

    @Override
    public void exitModifyColumn(MySQLParser.ModifyColumnContext ctx)
    {
        if (currentTypeSpec != null) {
            currentColumn.setTypeSpec(currentTypeSpec);
        } else {
            currentColumn.setTypeSpec(new TypeSpec(currentType));
        }

        AlterTableStatement.ModifyColumnAction action = new AlterTableStatement.ModifyColumnAction();
        action.setColumnDefinition(currentColumn);
        currentAlterTableStatement.addAction(action);

        currentIntegerTypeSpec = null;
        currentCharTypeSpec = null;
        currentTypeSpec = null;
        currentColumn = null;
        currentAlterTableMode = null;
    }

    @Override
    public void enterRenameTable(MySQLParser.RenameTableContext ctx)
    {
        currentAlterTableMode = AlterTableMode.RENAME_TABLE;
    }

    @Override
    public void exitRenameTable(MySQLParser.RenameTableContext ctx)
    {
        AlterTableStatement.RenameTableAction action = new AlterTableStatement.RenameTableAction();
        action.setNewName(normalizeTableName(ctx.table_ident().getText()));
        currentAlterTableStatement.addAction(action);

        currentAlterTableMode = null;
    }

    @Override
    public void exitAlterTable(MySQLParser.AlterTableContext ctx)
    {
        statements.add(currentStatement);

        currentMode = null;
        currentAlterTableStatement = null;
        currentStatement = null;
    }

    //
    // }} Exit alter table
    //

    //
    // Drop Table {{
    //

    @Override
    public void enterDropTable(MySQLParser.DropTableContext ctx)
    {
        currentMode = Mode.DROP_TABLE;
    }

    @Override
    public void exitDropTable(MySQLParser.DropTableContext ctx)
    {
        currentMode = null;
    }

    //
    // }} Exit Drop Table
    //

    @Override
    public void enterTableName(MySQLParser.TableNameContext ctx)
    {
        if (currentMode == Mode.DROP_TABLE) {
            DropTableStatement stmt = new DropTableStatement();
            stmt.setTableName(normalizeTableName(ctx.getText()));
            statements.add(stmt);
        }
    }

    @Override
    public void enterColumn_def(MySQLParser.Column_defContext ctx)
    {
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

        if (currentMode == Mode.CREATE_TABLE) {
            currentTable.addColumn(currentColumn);
        } else if (currentMode == Mode.ALTER_TABLE) {
            if (currentAlterTableMode == AlterTableMode.ADD_COLUMN) {
                AlterTableStatement.AddColumnAction action = new AlterTableStatement.AddColumnAction();
                action.setColumnDefinition(currentColumn);
                currentAlterTableStatement.addAction(action);
            }
        }

        currentIntegerTypeSpec = null;
        currentCharTypeSpec = null;
        currentTypeSpec = null;
        currentColumn = null;
    }

    //
    // Key Definition {{
    //

    @Override
    public void enterKeyDefinition(MySQLParser.KeyDefinitionContext ctx)
    {
        currentIndex = new Index();
    }

    @Override
    public void enterStandardIndex(MySQLParser.StandardIndexContext ctx)
    {
        currentIndex.setKeyType(Index.KeyType.STANDARD);
    }

    @Override
    public void enterFullTextIndex(MySQLParser.FullTextIndexContext ctx)
    {
        currentIndex.setKeyType(Index.KeyType.FULLTEXT);
    }

    @Override
    public void enterSpatialIndex(MySQLParser.SpatialIndexContext ctx)
    {
        currentIndex.setKeyType(Index.KeyType.SPATIAL);
    }

    @Override
    public void enterPrimaryIndex(MySQLParser.PrimaryIndexContext ctx)
    {
        currentIndex.setKeyType(Index.KeyType.PRIMARY);
    }

    @Override
    public void enterUniqueIndex(MySQLParser.UniqueIndexContext ctx)
    {
        currentIndex.setKeyType(Index.KeyType.UNIQUE);
    }

    @Override
    public void enterForeignKey(MySQLParser.ForeignKeyContext ctx)
    {
        currentIndex.setKeyType(Index.KeyType.FOREIGN);
    }

    @Override
    public void enterIndexAlgorithm(MySQLParser.IndexAlgorithmContext ctx)
    {
        currentIndex.setAlgorithm(ctx.getText());
    }

    @Override
    public void enterKeyBlockSize(MySQLParser.KeyBlockSizeContext ctx)
    {
        currentIndex.setBlockSize(ctx.getText());
    }

    @Override
    public void enterKeyComment(MySQLParser.KeyCommentContext ctx)
    {
        String txt = ctx.getText();
        currentIndex.setComment(txt.substring(1, txt.length()-1));
    }

    @Override
    public void enterKeyPart(MySQLParser.KeyPartContext ctx)
    {
        if (currentMode == Mode.CREATE_TABLE) {
            String name = ctx.getText();
            if (name.startsWith("`") && name.endsWith("`")) {
                name = name.substring(1, name.length()-1);
            }
            currentIndex.addPart(name, 0);
        }
    }

    @Override
    public void enterKeyPartWithLength(MySQLParser.KeyPartWithLengthContext ctx)
    {
    }

    @Override
    public void exitKeyDefinition(MySQLParser.KeyDefinitionContext ctx)
    {
        if (currentMode == Mode.CREATE_TABLE) {
            currentTable.addIndex(currentIndex);
        }
        currentIndex = null;
    }

    //
    // }} Exit key definition
    //

    @Override
    public void enterFieldName(MySQLParser.FieldNameContext ctx)
    {
        String name = ctx.getText();
        if (name.startsWith("`") && name.endsWith("`")) {
            name = name.substring(1, name.length()-1);
        }
        if (currentColumn != null) {
            currentColumn.setName(name);
        } else if (currentIndex != null) {
            currentIndex.setName(name);
        }
    }

    @Override
    public void enterEngineTableOption(MySQLParser.EngineTableOptionContext ctx)
    {
        currentTable.setEngine(ctx.storage_engines().getText());
    }

    @Override
    public void enterCharsetTableOption(MySQLParser.CharsetTableOptionContext ctx)
    {
        String charset = ctx.default_charset().charset_name_or_default().getText();
        if (!"DEFAULT".equals(charset)) {
            currentTable.setCharset(charset);
        }
    }

    //
    // Column Types {{
    //

    @Override
    public void enterIntegerType(MySQLParser.IntegerTypeContext ctx)
    {
        currentType = MySQLType.INTEGER;
        currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
        currentTypeSpec = currentIntegerTypeSpec;
    }

    @Override
    public void enterTinyIntType(MySQLParser.TinyIntTypeContext ctx)
    {
        currentType = MySQLType.TINYINT;
        currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
        currentTypeSpec = currentIntegerTypeSpec;
    }

    @Override
    public void enterSmallIntType(MySQLParser.SmallIntTypeContext ctx)
    {
        currentType = MySQLType.SMALLINT;
        currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
        currentTypeSpec = currentIntegerTypeSpec;
    }

    @Override
    public void enterMediumIntType(MySQLParser.MediumIntTypeContext ctx)
    {
        currentType = MySQLType.MEDIUMINT;
        currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
        currentTypeSpec = currentIntegerTypeSpec;
    }

    @Override
    public void enterBigIntType(MySQLParser.BigIntTypeContext ctx)
    {
        currentType = MySQLType.BIGINT;
        currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
        currentTypeSpec = currentIntegerTypeSpec;
    }

    @Override
    public void enterRealType(MySQLParser.RealTypeContext ctx)
    {
        currentType = MySQLType.REAL;
    }

    @Override
    public void enterFloatType(MySQLParser.FloatTypeContext ctx)
    {
        currentType = MySQLType.FLOAT;
    }

    @Override
    public void enterBitType(MySQLParser.BitTypeContext ctx)
    {
        currentType = MySQLType.BIT;
        currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
        currentTypeSpec = currentIntegerTypeSpec;
    }

    @Override
    public void enterBitTypeWithLength(MySQLParser.BitTypeWithLengthContext ctx)
    {
        currentType = MySQLType.BIT;
    }

    @Override
    public void enterBooleanType(MySQLParser.BooleanTypeContext ctx)
    {
        currentType = MySQLType.TINYINT;
        currentIntegerTypeSpec = new IntegerTypeSpec(currentType);
        currentIntegerTypeSpec.setLength(1);
        currentTypeSpec = currentIntegerTypeSpec;
    }

    @Override
    public void enterCharTypeWithLength(MySQLParser.CharTypeWithLengthContext ctx)
    {
        currentType = MySQLType.CHAR;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterCharType(MySQLParser.CharTypeContext ctx)
    {
        currentType = MySQLType.CHAR;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterNCharTypeWithLength(MySQLParser.NCharTypeWithLengthContext ctx)
    {
        currentType = MySQLType.NCHAR;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterNCharType(MySQLParser.NCharTypeContext ctx)
    {
        currentType = MySQLType.NCHAR;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterBinaryTypeWithLength(MySQLParser.BinaryTypeWithLengthContext ctx)
    {
        currentType = MySQLType.BINARY;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterBinaryType(MySQLParser.BinaryTypeContext ctx)
    {
        currentType = MySQLType.BINARY;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterVarcharTypeWithLength(MySQLParser.VarcharTypeWithLengthContext ctx)
    {
        currentType = MySQLType.VARCHAR;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterNVarcharTypeWithLength(MySQLParser.NVarcharTypeWithLengthContext ctx)
    {
        currentType = MySQLType.NVARCHAR;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterVarbinaryTypeWithLength(MySQLParser.VarbinaryTypeWithLengthContext ctx)
    {
        currentType = MySQLType.VARBINARY;
        currentCharTypeSpec = new CharTypeSpec(currentType);
        currentTypeSpec = currentCharTypeSpec;
    }

    @Override
    public void enterYearType(MySQLParser.YearTypeContext ctx)
    {
        currentType = MySQLType.YEAR;
    }

    @Override
    public void enterDateType(MySQLParser.DateTypeContext ctx)
    {
        currentType = MySQLType.DATE;
    }

    @Override
    public void enterTimeType(MySQLParser.TimeTypeContext ctx)
    {
        currentType = MySQLType.TIME;
    }

    @Override
    public void enterTimestampType(MySQLParser.TimestampTypeContext ctx)
    {
        currentType = MySQLType.TIMESTAMP;
    }

    @Override
    public void enterDateTimeType(MySQLParser.DateTimeTypeContext ctx)
    {
        currentType = MySQLType.DATETIME;
    }

    @Override
    public void enterTinyBlobType(MySQLParser.TinyBlobTypeContext ctx)
    {
        currentType = MySQLType.TINYBLOB;
    }

    @Override
    public void enterBlobType(MySQLParser.BlobTypeContext ctx)
    {
        currentType = MySQLType.BLOB;
    }

    @Override
    public void enterMediumBlobType(MySQLParser.MediumBlobTypeContext ctx)
    {
        currentType = MySQLType.MEDIUMBLOB;
    }

    @Override
    public void enterLongBlobType(MySQLParser.LongBlobTypeContext ctx)
    {
        currentType = MySQLType.LONGBLOB;
    }

    @Override
    public void enterLongVarbinaryType(MySQLParser.LongVarbinaryTypeContext ctx)
    {
        currentType = MySQLType.VARBINARY;
    }

    @Override
    public void enterLongVarcharType(MySQLParser.LongVarcharTypeContext ctx)
    {
        currentType = MySQLType.VARCHAR;
    }

    @Override
    public void enterTinyTextType(MySQLParser.TinyTextTypeContext ctx)
    {
        currentType = MySQLType.TINYTEXT;
    }

    @Override
    public void enterTextType(MySQLParser.TextTypeContext ctx)
    {
        currentType = MySQLType.TEXT;
    }

    @Override
    public void enterMediumTextType(MySQLParser.MediumTextTypeContext ctx)
    {
        currentType = MySQLType.MEDIUMTEXT;
    }

    @Override
    public void enterLongTextType(MySQLParser.LongTextTypeContext ctx)
    {
        currentType = MySQLType.LONGTEXT;
    }

    @Override
    public void enterDecimalType(MySQLParser.DecimalTypeContext ctx)
    {
        currentType = MySQLType.DECIMAL;
    }

    @Override
    public void enterNumericType(MySQLParser.NumericTypeContext ctx)
    {
        currentType = MySQLType.NUMERIC;
    }

    @Override
    public void enterFixedType(MySQLParser.FixedTypeContext ctx)
    {
        currentType = MySQLType.FIXED;
    }

    @Override
    public void enterEnumType(MySQLParser.EnumTypeContext ctx)
    {
        currentType = MySQLType.ENUM;
        currentSetTypeSpec = new SetTypeSpec(currentType);
        currentTypeSpec = currentSetTypeSpec;
    }

    @Override
    public void enterSetType(MySQLParser.SetTypeContext ctx)
    {
        currentType = MySQLType.SET;
        currentSetTypeSpec = new SetTypeSpec(currentType);
        currentTypeSpec = currentSetTypeSpec;
    }

    @Override
    public void enterLongType(MySQLParser.LongTypeContext ctx)
    {
        currentType = MySQLType.LONG;
    }

    @Override
    public void enterSerialType(MySQLParser.SerialTypeContext ctx)
    {
        currentType = MySQLType.SERIAL;
    }

    @Override
    public void enterGeometryType(MySQLParser.GeometryTypeContext ctx)
    {
        currentType = MySQLType.GEOMETRY;
    }

    @Override
    public void enterGeometryCollectionType(MySQLParser.GeometryCollectionTypeContext ctx)
    {
        currentType = MySQLType.GEOMETRYCOLLECTION;
    }

    @Override
    public void enterPointType(MySQLParser.PointTypeContext ctx)
    {
        currentType = MySQLType.POINT;
    }

    @Override
    public void enterMultiPointType(MySQLParser.MultiPointTypeContext ctx)
    {
        currentType = MySQLType.MULTIPOINT;
    }

    @Override
    public void enterLineStringType(MySQLParser.LineStringTypeContext ctx)
    {
        currentType = MySQLType.LINESTRING;
    }

    @Override
    public void enterMultiLineStringType(MySQLParser.MultiLineStringTypeContext ctx)
    {
        currentType = MySQLType.MULTILINESTRING;
    }

    @Override
    public void enterPolygonType(MySQLParser.PolygonTypeContext ctx)
    {
        currentType = MySQLType.POLYGON;
    }

    @Override
    public void enterMultiPolygonType(MySQLParser.MultiPolygonTypeContext ctx)
    {
        currentType = MySQLType.MULTIPOLYGON;
    }

    @Override
    public void enterIntegerFieldLength(MySQLParser.IntegerFieldLengthContext ctx)
    {
        String txt = ctx.getText();
        String noParen = txt.substring(1, txt.length()-1);
        int length = Integer.parseInt(noParen);

        if (currentIntegerTypeSpec != null) {
            currentIntegerTypeSpec.setLength(length);
        } else if (currentCharTypeSpec != null) {
            currentCharTypeSpec.setLength(length);
        }
    }

    //
    // }} Exit column types
    //

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
        currentColumn.setAllowNull(false);
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
        currentColumn.setAllowNull(false);
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
    }

    @Override
    public void enterUnsignedFieldOption(MySQLParser.UnsignedFieldOptionContext ctx)
    {
        currentIntegerTypeSpec.setSigned(false);
    }

    @Override
    public void enterZeroFillFieldOption(MySQLParser.ZeroFillFieldOptionContext ctx)
    {
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
    }

    // AsciiCharset
    @Override
    public void enterAsciiCharset(MySQLParser.AsciiCharsetContext ctx)
    {
    }

    @Override
    public void enterAsciiText(MySQLParser.AsciiTextContext ctx)
    {
    }

    @Override
    public void enterAsciiBinary(MySQLParser.AsciiBinaryContext ctx)
    {
    }

    // UnicodeCharset
    @Override
    public void enterUnicodeCharset(MySQLParser.UnicodeCharsetContext ctx)
    {
    }

    @Override
    public void enterUnicodeText(MySQLParser.UnicodeTextContext ctx)
    {
    }

    @Override
    public void enterUnicodeBinary(MySQLParser.UnicodeBinaryContext ctx)
    {
    }

    @Override
    public void enterBinaryCharsetModifier(MySQLParser.BinaryCharsetModifierContext ctx)
    {
    }

    // SpecifiedCharset
    @Override
    public void enterSpecifiedCharset(MySQLParser.SpecifiedCharsetContext ctx)
    {
    }

    @Override
    public void enterCharsetName(MySQLParser.CharsetNameContext ctx)
    {
    }

    @Override
    public void enterBinaryCharset(MySQLParser.BinaryCharsetContext ctx)
    {
    }

    // BinaryNoCharset
    @Override
    public void enterBinaryNoCharset(MySQLParser.BinaryNoCharsetContext ctx)
    {
    }

    // BinaryWithCharset
    @Override
    public void enterBinaryWithCharset(MySQLParser.BinaryWithCharsetContext ctx)
    {
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

    private String normalizeTableName(String unnormalized)
    {
        String name = unnormalized;
        if (name.startsWith(".")) {
            name = name.substring(1);
        }

        Pattern databasePattern = Pattern.compile("^`([^`]+)`.`([^`]+)`$");
        Matcher m = databasePattern.matcher(name);
        if (m.matches()) {
            name = m.group(2);
        } else if (name.startsWith("`") && name.endsWith("`")) {
            name = name.substring(1, name.length()-1);
        }

        return name;
    }
}
