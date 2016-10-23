#!/bin/bash
set -e

time ./scripts/run_slave2_and_hang.sh "$@" &
PID="$!"
trap "./scripts/kill_recursively.sh $PID" EXIT


# wait for the child process to terminate
wait
