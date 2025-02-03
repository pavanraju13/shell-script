#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script, course: $COURSE"

echo "process ID of the current shell script : $$"

source ./17-otherscript.sh

echo "After calling the other script , course: $COURSE"


