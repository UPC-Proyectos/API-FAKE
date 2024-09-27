#!/bin/sh

set -e

if [ ! -f ".mvn/wrapper/maven-wrapper.jar" ]; then
    mvn -N io.takari:maven:wrapper
fi

exec java -jar .mvn/wrapper/maven-wrapper.jar "$@"

