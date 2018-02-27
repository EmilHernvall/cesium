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
import com.znaptag.cesium.util.*;
import com.znaptag.cesium.online.*;

public class DeployCommand extends AbstractCommand
{
    private GlobalConfig config = GlobalConfig.loadDefaultConfig();

    private final Table VERSION_TABLE = new Table()
        .withName("csver")
        .withColumn(new Column()
                    .withName("csver_name")
                    .withTypeSpec(new TypeSpec(MySQLType.TEXT)))
        .withColumn(new Column()
                    .withName("csver_description")
                    .withTypeSpec(new TypeSpec(MySQLType.TEXT)))
        .withColumn(new Column()
                    .withName("csver_timestamp")
                    .withTypeSpec(new TypeSpec(MySQLType.TIMESTAMP)))
        .withPrimaryKey(new Index()
                        .withKeyType(Index.KeyType.PRIMARY)
                        .withPart("csver_name", 0));

    public DeployCommand()
    {
    }

    @Override
    public String getName() { return "deploy"; }

    @Override
    public String getDescription()
    {
        return "Create a new database based on the schema described by the " +
            "repository, or upgrade an existing database";
    }

    @Override
    public void execute(String[] args)
    throws Exception
    {
        /*if (args.length < 3) {
            return;
        }

        GlobalConfig.Database db = config.getDatabase(args[1]);

        Class.forName("com.mysql.jdbc.Driver").newInstance();

        Schema onlineSchema;
        try (Connection conn = DriverManager.getConnection(db.getConnectionString())) {
            SchemaFetcher fetcher = new SchemaFetcher(conn);
            onlineSchema = fetcher.retrieve();
        }

        File startFile = new File(args[2]);

        Schema localSchema = new Schema();

        DiffWalker walker = new DiffWalker();
        List<Statement> statements = walker.walk(startFile);

        System.out.println("Executing statements:");
        for (Statement statement : statements) {
            //statement.print();
            statement.execute(localSchema);
        }

        localSchema.differenceTo(onlineSchema);*/
    }
}
