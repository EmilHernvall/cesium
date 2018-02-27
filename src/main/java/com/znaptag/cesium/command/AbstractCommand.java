package com.znaptag.cesium.command;

public abstract class AbstractCommand implements Command
{
    @Override
    public String[] getAliases()
    {
        return new String[] { getName() };
    }
}
