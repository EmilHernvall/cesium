package com.znaptag.cesium.command;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.regex.*;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

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
import com.znaptag.cesium.online.SchemaFetcher;

public class StatusCommand extends AbstractCommand
{
    public StatusCommand()
    {
    }

    @Override
    public String getName() { return "status"; }

    @Override
    public String getDescription()
    {
        return "Show current changes to database compared to the cesium repository";
    }

    @Override
    public void execute(String[] args)
    throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        String dsn = "jdbc:mysql://172.17.0.2/znaptag?user=znaptag&password=znaptag&characterEncoding=utf8";
        Schema onlineSchema;
        try (Connection conn = DriverManager.getConnection(dsn)) {
            SchemaFetcher fetcher = new SchemaFetcher(conn);
            onlineSchema = fetcher.retrieve();
        }

        File startFile = new File(args[1]);

        Schema localSchema = new Schema();

        DiffWalker walker = new DiffWalker();
        List<Statement> statements = walker.walk(startFile);

        System.out.println("Executing statements:");
        for (Statement statement : statements) {
            //statement.print();
            statement.execute(localSchema);
        }

        localSchema.differenceTo(onlineSchema);
    }
}
