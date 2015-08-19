package com.znaptag.cesium.command;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.regex.*;
import java.io.File;
import java.io.FileInputStream;
import java.sql.*;
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

        String dsn = "jdbc:mysql://172.17.0.4/znaptag?user=znaptag&password=znaptag&characterEncoding=utf8";
        try (Connection conn = DriverManager.getConnection(dsn)) {
            SchemaFetcher fetcher = new SchemaFetcher(conn);
            Schema schema = fetcher.retrieve();
            schema.print();
        }
    }
}
