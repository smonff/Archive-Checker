# READ ME 
## INTRO
Check a tar.gz archive for conformity without extract it                                                     
I was too much bored of typing a lot of 'tar -xzvf $file -0 > /dev/null' to check some important stuff very often when I compress data into archives. As I'm effraid that anything goes wrong with my data, I most of the time check it before I delete original files.

That's why I start this small script.                                                         
                               
Original idea from http://stackoverflow.com/questions/2001709/how-to-check-if-a-unix-tar-gz-file-is-a-valid-file-without-uncompressing

## USAGE
- use an alias in your path like `checkar`
- Pass at least one argument.
- You can pass as many arguments as you want.
- It was not suppoded to be a feature first but you can use a wildcard (*) if you want to check all the archives into the current directory, e.g. `checkar *.tar.gz`

## TODO
- Warn if no argument is pass
