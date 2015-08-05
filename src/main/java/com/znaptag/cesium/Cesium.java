package com.znaptag.cesium;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import com.znaptag.cesium.parser.*;

public class Cesium
{
    public static class ListenerImpl extends MySQLBaseListener
    {
        public enum Mode
        {
            CREATE_TABLE;
        }

        private Mode currentMode = null;

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
        public void enterTable_ident(MySQLParser.Table_identContext ctx)
        {
            System.out.println("TABLE IDENT " + ctx.getText());
        }

        @Override
        public void enterField_ident(MySQLParser.Field_identContext ctx)
        {
            System.out.println("FIELD IDENT " + ctx.getText());
        }

        @Override
        public void enterMysqltype(MySQLParser.MysqltypeContext ctx)
        {
            System.out.println("TYPE " + ctx.getText());
        }

        @Override
        public void enterCreate_table_option(MySQLParser.Create_table_optionContext ctx)
        {
            System.out.println("TABLE OPTION " + ctx.getText());
        }

        /*@Override
        public void enterIdent(MySQLParser.IdentContext ctx)
        {
            System.out.println("IDENT " + ctx.getText());
        }*/
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
