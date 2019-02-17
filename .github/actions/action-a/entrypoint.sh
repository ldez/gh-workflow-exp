#!/bin/sh -l

env

ls -a

cat $GITHUB_EVENT_PATH

sh -c "echo $*"

