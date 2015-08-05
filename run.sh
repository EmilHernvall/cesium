#!/bin/bash

CLASSPATH=$CLASSPATH:build/classes/main
for LIB in $( "ls" -1 build/deps ); do
    CLASSPATH=$CLASSPATH:build/deps/$LIB
done

if [ "$1" == "--print-classpath" ]; then
    echo $CLASSPATH
    exit
fi

java -cp $CLASSPATH \
    com.znaptag.cesium.Cesium $*
