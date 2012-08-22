#!/bin/sh
# Check a tar.gz archive for conformity
# From http://stackoverflow.com/questions/2001709/how-to-check-if-a-unix-tar-gz-file-is-a-valid-file-without-uncompressing
# Argument $1 is the path of the file                                                                                      
# -0 extact to stdout
tar -xvzf $1 -O > /dev/null
