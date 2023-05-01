#!/bin/sh
set -e # exit immediately if newman complains
trap 'kill $PID' EXIT # kill the server on exit

./run.sh & PID=$! # record the PID
newman run ./tests.json -e ./env.json
