package com.znaptag.cesium.repository;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.atn.PredictionMode;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import com.znaptag.cesium.*;
import com.znaptag.cesium.parser.*;
import com.znaptag.cesium.command.*;
import com.znaptag.cesium.statement.*;

public class DiffWalker
{
    public DiffWalker()
    {
    }

    public List<Statement> walk(File startFile)
    throws IOException
    {
        File dir = startFile.getParentFile();
        File currentFile = startFile;

        ParseTreeListener listener = new ParseTreeListener();
        List<Statement> statements = new ArrayList<Statement>();
        while (true) {
            MySQLLexer lexer = new MySQLLexer(new ANTLRInputStream(new FileInputStream(currentFile)));
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MySQLParser parser = new MySQLParser(tokens);

            do {
                listener.reset();

                // Specify our entry point
                long startTime = System.currentTimeMillis();
                MySQLParser.QueryContext ctx = parser.query();
                long timeElapsed = System.currentTimeMillis() - startTime;

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

            listener.clean();
        }

        return statements;
    }
}
