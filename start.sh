#!/bin/sh
JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/amd64:$JAVA_HOME/lib/amd64:$LD_LIBRARY_PATH"

"$JAVA_HOME/bin/java" -Xmx1024M -Xms1024M \
    -Dorg.lwjgl.librarypath="$PWD/natives" \
    -Dnet.java.games.input.librarypath="$PWD/natives" \
    -cp "lwjgl.jar:lwjgl_util.jar:Minecraft.jar" \
    Start
