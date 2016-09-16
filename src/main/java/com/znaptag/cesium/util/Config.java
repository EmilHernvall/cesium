package com.znaptag.cesium.util;

import java.io.File;
import java.io.Reader;
import java.io.Writer;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.BufferedReader;
import java.io.Writer;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.Set;
import java.util.Map;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class Config
{
    public static class Section
    {
        private Map<String, String> kv;

        public Section()
        {
            kv = new LinkedHashMap<>();
        }

        public void set(String k, String v)
        {
            kv.put(k, v);
        }

        public String get(String k)
        {
            return kv.get(k);
        }

        public void write(PrintWriter pw)
        throws IOException
        {
            for (Map.Entry<String, String> kvEntry : kv.entrySet()) {
                String k = kvEntry.getKey();
                String v = kvEntry.getValue();
                pw.println(k + " = " + v);
            }
        }
    }

    private static final Pattern COMMENT_PATTERN = Pattern.compile("^#(.+)$");
    private static final Pattern SECTION_PATTERN = Pattern.compile("^\\[([^\\]]+)\\]$");
    private static final Pattern KV_PATTERN = Pattern.compile("^([A-Za-z0-9_]+) *= *(.*)$");

    public static Config read(File file)
    throws IOException
    {
        try (FileReader reader = new FileReader(file)) {
            return Config.read(reader);
        }
    }

    public static Config read(Reader reader)
    throws IOException
    {
        Config config = new Config();

        try (BufferedReader br = new BufferedReader(reader)) {
            String line = null;
            String currentSection = null;
            while ((line = br.readLine()) != null) {
                Matcher m = COMMENT_PATTERN.matcher(line);
                if (m.matches()) {
                    String comment = m.group(1);
                    continue;
                }

                m = SECTION_PATTERN.matcher(line);
                if (m.matches()) {
                    currentSection = m.group(1);
                    continue;
                }

                m = KV_PATTERN.matcher(line);
                if (m.matches()) {
                    String key = m.group(1);
                    String value = m.group(2);
                    config.set(currentSection, key, value);
                    continue;
                }
            }
        }

        return config;
    }

    private Map<String, Section> sections;

    public Config()
    {
        sections = new LinkedHashMap<String, Section>();
    }

    public Set<String> getSectionNames()
    {
        return Collections.unmodifiableSet(sections.keySet());
    }

    public Section getSection(String s)
    {
        return sections.get(s);
    }

    public String get(String s, String k)
    {
        Section section = sections.get(s);
        if (section == null) {
            return null;
        }

        return section.get(k);
    }

    public void set(String s, String k, String v)
    {
        Section section = sections.get(s);
        if (section == null) {
            section = new Section();
            sections.put(s, section);
        }

        section.set(k, v);
    }

    public void write(File file)
    throws IOException
    {
        try (FileWriter writer = new FileWriter(file)) {
            write(writer);
        }
    }

    public void write(Writer writer)
    throws IOException
    {
        try (PrintWriter pw = new PrintWriter(writer)) {
            for (Map.Entry<String, Section> sectionEntry : sections.entrySet()) {
                String sectionName = sectionEntry.getKey();
                pw.println("[" + sectionName + "]");

                Section section = sectionEntry.getValue();
                section.write(pw);

                pw.println();
            }
        }
    }
}
