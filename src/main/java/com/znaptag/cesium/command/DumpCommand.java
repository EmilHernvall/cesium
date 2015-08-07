package com.znaptag.cesium.command;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.io.File;
import java.io.FileInputStream;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.atn.PredictionMode;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import com.znaptag.cesium.*;
import com.znaptag.cesium.parser.*;
import com.znaptag.cesium.schema.*;
import com.znaptag.cesium.statement.*;
import com.znaptag.cesium.command.*;

public class DumpCommand extends AbstractCommand
{
    public DumpCommand()
    {
    }

    @Override
    public String getName() { return "dump"; }

    @Override
    public String getDescription()
    {
        return "Dump the schema as described by the cesium repository, " +
               "or by the active database";
    }

    @Override
    public void execute(String[] args)
    throws Exception
    {
        File startFile = new File(args[1]);
        File dir = startFile.getParentFile();
        File currentFile = startFile;

        ParseTreeListener listener = new ParseTreeListener();
        List<Statement> statements = new ArrayList<Statement>();
        while (true) {
            // Get our lexer
            MySQLLexer lexer = new MySQLLexer(new ANTLRInputStream(new FileInputStream(currentFile)));

            // Get a list of matched tokens
            CommonTokenStream tokens = new CommonTokenStream(lexer);

            // Pass the tokens to the parser
            MySQLParser parser = new MySQLParser(tokens);
            //parser.getInterpreter().setPredictionMode(PredictionMode.SLL);

            do {
                listener.reset();

                // Specify our entry point
                long startTime = System.currentTimeMillis();
                MySQLParser.QueryContext ctx = parser.query();
                long timeElapsed = System.currentTimeMillis() - startTime;
                //System.out.println("Time elapsed: " + timeElapsed + "ms");

                // Walk it and attach our listener
                ParseTreeWalker walker = new ParseTreeWalker();
                walker.walk(listener, ctx);

            } while (listener.hasData());

            List<Statement> newStatements = new ArrayList<Statement>();
            newStatements.addAll(listener.getStatements());
            newStatements.addAll(statements);
            statements = newStatements;

            Map<String, String> directives = listener.getDirectives();
            String parent = directives.get("parent");
            if (parent == null) {
                break;
            }
            currentFile = new File(dir, parent);
            System.out.println(parent);

            listener.clean();
        }

        Schema schema = new Schema();

        System.out.println("Executing statements:");
        for (Statement statement : statements) {
            //statement.print();
            statement.execute(schema);
        }

        System.out.println("Dumping schema:");
        schema.print();
    }
}
