#!/bin/bash
# Check a tar.gz archive for conformity
# From http://stackoverflow.com/questions/2001709/how-to-check-if-a-unix-tar-gz-file-is-a-valid-file-without-uncompressing
# TODO: check if there is some arguments passed

checked_files=0

for arg in "$@"

do
    echo "Gonna check $arg ..."
    sleep 3

    file="$arg"

    # Argument $1 is the path of the file
    # -0 extract to stdout
    tar -xvzf $file -O > /dev/null
    
    echo "Check OK for $arg"
    # Stange incrementation way (I <3 Perl)
    checked_files=`expr $checked_files + 1`
    
done

echo "$checked_files files checked OK."