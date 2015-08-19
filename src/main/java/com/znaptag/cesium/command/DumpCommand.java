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
import com.znaptag.cesium.repository.*;

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

        Schema schema = new Schema();

        DiffWalker walker = new DiffWalker();
        List<Statement> statements = walker.walk(startFile);

        System.out.println("Executing statements:");
        for (Statement statement : statements) {
            //statement.print();
            statement.execute(schema);
        }

        System.out.println("Dumping schema:");
        schema.print();
    }
}
