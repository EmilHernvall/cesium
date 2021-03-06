package com.znaptag.cesium.command;

public interface Command
{
    public String getName();
    public String[] getAliases();
    public String getDescription();
    public void execute(String[] args) throws Exception;
}
