#!/bin/bash
export IDES_HOME=${HOME}/ides
export ECLIPSE_HOME=${IDES_HOME}/eclipse/lunajee/eclipse
export WORKSPACES_HOME=${HOME}/workspaces
export WORKSPACE_HOME=${WORKSPACES_HOME}/jaulp.core
export ECLIPSE_EXECUTABLE=${ECLIPSE_HOME}/eclipse
export JAVA_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/jni/libsvnjavahl-1.so
export VM_ARGS=-Xms384m -Xmx1024m -XX:PermSize=128M -XX:MaxPermSize=512M
${ECLIPSE_EXECUTABLE} /i /max /high -data ${WORKSPACE_HOME} -showlocation vmargs ${VM_ARGS} -javaagent:${ECLIPSE_HOME}/lombok.jar -Xbootclasspath/a:${ECLIPSE_HOME}/lombok.jar -Djava.library.path=${JAVA_LIBRARY_PATH}