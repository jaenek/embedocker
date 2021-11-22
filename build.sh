#!/bin/sh

echo Building arduino-cli:latest

docker build --no-cache -t arduino-cli:latest .
