package com.znaptag.cesium;

import java.util.EnumSet;
import java.util.List;
import java.util.ArrayList;
import java.util.regex.*;
import java.io.FileInputStream;
import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.atn.PredictionMode;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import com.znaptag.cesium.parser.*;
import com.znaptag.cesium.schema.*;
import com.znaptag.cesium.statement.*;
import com.znaptag.cesium.command.*;

public class Cesium
{
    private final static Map<String, Command> COMMANDS = new HashMap<>();

    static {
        addCommand(new DumpCommand());
        addCommand(new StatusCommand());
    }

    private static void addCommand(Command command)
    {
        COMMANDS.put(command.getName(), command);
    }

    public static void printUsage()
    {
        System.out.println("usage: cs <command>");
        System.out.println();

        for (Command command : COMMANDS.values()) {
            System.out.println("\t" + command.getName() + "\t\t" + command.getDescription());
        }
    }

    public static void main(String[] args)
    throws Exception
    {
        if (args.length == 0) {
            printUsage();
            return;
        }

        Command command = COMMANDS.get(args[0]);
        if (command == null) {
            System.out.println("no command " + args[0]);
            return;
        }
        command.execute(args);

        // TODO:
        // CREATE TEMPORARY TABLE
        // CREATE TABLE IF NOT EXISTS
        // CREATE TABLE a LIKE b
        // CREATE TABLE a ( LIKE b )
        //
        // OPTIONS:
        // ENGINE =
        // MAX_ROWS =
        // MIN_ROWS =
        // AVG_ROW_LENGTH =
        // PASSWORD =
        // COMMENT =
        // AUTO_INC =
        // PACK_KEYS =
        // STATS_AUTO_RECALC =
        // STATS_PERSISTENT =
        // STATS_SAMPLE_PAGES =
        // CHECKSUM =
        // TABLE_CHECKSUM =
        // DELAY_KEY_WRITE =
        // ROW_FORMAT =
        // UNION ( ... )
        // DEFAULT CHARSET =
        // DEFAULT COLLATE =
        // INSERT_METHOD =
        // DATA DIRECTORY =
        // INDEX DIRECTORY =
        // TABLESPACE ...
        // STORAGE [ DISK | MEMORY ]
        // CONNECTION =
        // KEY_BLOCK_SIZE =
    }
}
