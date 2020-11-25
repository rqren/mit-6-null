
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
Remark:
    ```
    cat <(ls) <(ls ..)
    ```
    should not be `cat < (ls) < (ls ..)`

