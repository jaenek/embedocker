#!/bin/sh

docker run -it --rm --device=/dev/ttyUSB0 --name arduino --entrypoint=/bin/bash arduino-cli
