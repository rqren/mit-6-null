
- difference between single quotation and double quotation:
```
foo=bar
echo "foo"
foo

echo 'foo'
bar
```
- `source mcd.sh`: The `source` command 

- About `$` arguments in BASH script
    - `$0` is the name of the script
    - `$1` through `$9` will be the first to the ninth arguments
    - `$?` the error code from the previous command
    - `$_` the last command parameter
    - `$#`
    - `$$` pid
    - `$@` expand all args and usually be used in a for loop
```rmdir test
mkdir teset
cd $_
```
- File descriptor 1 is the standard output (stdout).
File descriptor 2 is the standard error (stderr).
`grep foobar "$file" > /dev/null 2> /dev/null`
Here is one way to remember this construct (although it is not entirely accurate): at first, 2>1 may look like a good way to redirect stderr to stdout. However, it will actually be interpreted as "redirect stderr to a file named 1". & indicates that what follows and precedes is a file descriptor and not a filename. So the construct becomes: 2>&1.

Consider >& as redirect merger operator.

`!!` the same as $_
```mkdir /mnt/new
sudo !!
```
Which is equal to `sudo mkdir /mnt/new`

0 means every thing is fine
but 
```
grep foobar mcd.sh
$?
1
```
```
true
$? 
0
```

```
false 
$? 
1
```
```
false || echo 'Oops fail'
Oops fail
```
```
true || echo 'Will be not printed'
```
Same for `&&`

```
false ; echo 'this will always print'
```
foo=$(pwd)
echo "We are in $(pwd)"

`cat <(ls) < (ls ..)` doesn't work for me. And it throws an error: 'zsh: number expected'

- man test   this will show us alot of things 
- globbing
    - ls *.sh
        - ls project?
        - convert image.png image.jpg
        convert image.{png,jpg} 
        - {foo,bar}/{a..j}
- diff A B returns < means in A not in B, > means in B not in A
- shebang
    - #!/usr/bin/env python  `env` would help us to find python, run the env command to find python in the sys folders and then use that. this is portable for executed in other machines!

- shellcheck https://github.com/koalaman/shellcheck
    - brew install shellcheck

tools:
- man
    - man rg   called ripgrep
    - tldr ffmpeg
- find 
    - find . -name src -type d
    - find . -path '**/test/*.py' -type f
    - find . -mtime -1   modified in the last day
    - size owner permission
    - find . -name "*.tmp" -exec rm {} \;
    - find . -name ".*tmp"
    - fd ".*py"
- locate
    - updatedb
- grep
    - grep foobar mcd.sh
    - grep -R foobar mcd.sh
    - grep -R foobar
- rg     ripgrep
    - rg "import requests" -t py ~/scratch
    - rg "import requests" -t py -C 5 ~/scratch       show 5 lines context (totally is 10 before and after)
    - rg -u --files-without-match "^#\!" -t sh       -u ignore hidden files -filesxxxx find the one not match - t sh only find the .sh files
    - rg "import requests" -t py -C 5 --stats ~/scratch    --stats tell us how many matches etc.
- 1 ack,  2 silver search: ag
- easy commands
    - upper arrow
    - history
    - history 1    everything from beginning
    - history | grep jpeg
    - history 1 | 
- fzf
- history substring search

- directory listing and searching
    - ls -R: recursive 
    - tree 
    - broot


Remark:
    ```
    cat <(ls) <(ls ..)
    ```
    should not be `cat < (ls) < (ls ..)`
    That is to say, bash is space sensitive.
    In general, in shell scripts the space character will perform argument splitting. This behavior can be confusing to use at first, so always check for that.

# Exercises
1. 
```
ls -alhtG
```
2.
```

```
