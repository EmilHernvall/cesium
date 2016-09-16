package com.znaptag.cesium.command;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

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
import com.znaptag.cesium.util.*;

public class DatabaseCommand extends AbstractCommand
{
    private GlobalConfig config = GlobalConfig.loadDefaultConfig();

    public DatabaseCommand()
    {
    }

    @Override
    public String getName() { return "database"; }

    @Override
    public String getDescription()
    {
        return "Manage your database configurations";
    }

    private void printUsage()
    {
        System.out.println("cs database");
        System.out.println("cs database add [name] [host] [user] [password] [dbname]");
        System.out.println("cs database rm [name]");
    }

    private void listDatabases()
    {
        for (GlobalConfig.Database db : config.getDatabases()) {
            System.out.println(db.getName());
        }
    }

    private void addDatabase(String name,
                             String host,
                             String user,
                             String password,
                             String dbname)
    throws IOException
    {
        GlobalConfig.Database db = new GlobalConfig.Database();
        db.setName(name);
        db.setHost(host);
        db.setUser(user);
        db.setPassword(password);
        db.setDatabaseName(dbname);
        config.addDatabase(db);
        config.saveToDefault();
    }

    private void delDatabase(String name)
    throws IOException
    {
        config.deleteDatabase(name);
        config.saveToDefault();
    }

    @Override
    public void execute(String[] args)
    throws Exception
    {
        for (int i = 1; i < args.length; ) {
            if ("-h".equals(args[i])) {
                printUsage();
                return;
            } else if ("--help".equals(args[i])) {
                printUsage();
                return;
            } else if ("add".equals(args[i])) {
                if (args.length - i < 5) {
                    printUsage();
                    return;
                }

                String name = args[i+1];
                String host = args[i+2];
                String user = args[i+3];
                String password = args[i+4];
                String dbname = args[i+5];
                addDatabase(name, host, user, password, dbname);

                System.out.println("Adding database " + name);
                i += 6;
                return;
            } else if ("rm".equals(args[i])) {
                if (args.length - i < 1) {
                    printUsage();
                    return;
                }

                String name = args[i+1];
                delDatabase(name);

                i += 2;
                return;
            } else if (args[i].startsWith("-")) {
                System.out.println("Unknown option " + args[i]);
                return;
            }
        }

        listDatabases();
    }
}
