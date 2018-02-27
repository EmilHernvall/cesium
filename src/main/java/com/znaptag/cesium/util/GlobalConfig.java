package com.znaptag.cesium.util;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import java.util.LinkedHashMap;

public class GlobalConfig
{
    public static class Database
    {
        private String name;
        private String host;
        private String user;
        private String password;
        private String dbname;

        public Database()
        {
        }

        public void setName(String v) { this.name = v; }
        public String getName() { return name; }

        public void setHost(String v) { this.host = v; }
        public String getHost() { return host; }

        public void setUser(String v) { this.user = v; }
        public String getUser() { return user; }

        public void setPassword(String v) { this.password = v; }
        public String getPassword() { return password; }

        public void setDatabaseName(String v) { this.dbname = v; }
        public String getDatabaseName() { return dbname; }

        public String getConnectionString()
        {
            return String.format("jdbc:mysql://%s/znaptag?user=%s&password=%s&characterEncoding=utf8",
                                 host,
                                 user,
                                 password,
                                 dbname);
        }
    }

    private Map<String, Database> databases;

    public static File getDefaultConfig()
    {
        Map<String, String> env = System.getenv();

        String home = env.get("HOME");
        return new File(home, ".cesium");
    }

    public static GlobalConfig loadDefaultConfig()
    {
        GlobalConfig globalConfig = new GlobalConfig();

        File cesiumConfigFile = getDefaultConfig();
        if (!cesiumConfigFile.exists()) {
            return globalConfig;
        }

        Config config;
        try {
            config = Config.read(cesiumConfigFile);
        } catch (IOException e) {
            return globalConfig;
        }

        for (String name : config.getSectionNames()) {
            if (!name.contains(":")) {
                continue;
            }

            String[] split = name.split(":");
            if (split.length != 2) {
                continue;
            }

            if (!"database".equalsIgnoreCase(split[0])) {
                continue;
            }

            Config.Section dbSection = config.getSection(name);

            Database db = new Database();
            db.setName(split[1]);
            db.setHost(dbSection.get("host"));
            db.setUser(dbSection.get("user"));
            db.setPassword(dbSection.get("password"));
            db.setDatabaseName(dbSection.get("dbname"));
            globalConfig.addDatabase(db);
        }

        return globalConfig;
    }

    public GlobalConfig()
    {
        databases = new LinkedHashMap<String, Database>();
    }

    public Collection<Database> getDatabases()
    {
        return databases.values();
    }

    public Database getDatabase(String name)
    {
        return databases.get(name);
    }

    public void addDatabase(Database db)
    {
        databases.put(db.getName(), db);
    }

    public void deleteDatabase(String name)
    {
        databases.remove(name);
    }

    public void saveToDefault()
    throws IOException
    {
        Config config = new Config();

        for (Database db : databases.values()) {
            config.set("database:" + db.getName(), "host", db.getHost());
            config.set("database:" + db.getName(), "user", db.getUser());
            config.set("database:" + db.getName(), "password", db.getPassword());
            config.set("database:" + db.getName(), "dbname", db.getDatabaseName());
        }

        File cesiumConfigFile = getDefaultConfig();
        config.write(cesiumConfigFile);
    }
}
