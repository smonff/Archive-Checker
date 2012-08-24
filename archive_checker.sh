#!/bin/bash
# Check a tar.gz archive for conformity
# I was too much bored of typing a lot of 'tar -xzvf $file -0 > /dev/null' to check
# some important stuff very often when I compress data into archives. As I'm effraid that
# anything goes wrong with my data, I most of the time check it before I delete original files.
# That's why I start this small script.
# Original idea comes from http://stackoverflow.com/questions/2001709/how-to-check-if-a-unix-tar-gz-file-is-a-valid-file-without-uncompressing

# TODO: check if there is some arguments passed

checked_files=0
checke_ok=0

for arg in "$@"

do
    echo "Gonna check $arg ..."
    sleep 3

    file="$arg"

    # Argument $1 is the path of the file
    # -0 extract to stdout
    # TODO 
    # We should test what return this command
    # Increment $check_ok only if the archive is ok
    tar -xvzf $file -O > /dev/null
    
    echo "Check OK for $arg"
    # Strange incrementation way (I <3 Perl)
    checked_files=`expr $checked_files + 1`
    
done

# TODO
echo "?/$checked_files are OK."