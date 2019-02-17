#!/bin/sh -l

env

ls

cat $GITHUB_EVENT_PATH

sh -c "echo $*"

