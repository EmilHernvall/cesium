package com.znaptag.cesium.statement;

import com.znaptag.cesium.schema.*;

public interface Statement
{
    public void print();
    public void execute(Schema schema);
}
