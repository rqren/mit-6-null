
1. 
```console
echo $SHELL
/bin/zsh
```
2. 
```console
mkdir /tmp/missing
```

3. 
```
man touch
```

4. 
```console
touch semester
```
5. 
```console
echo '#!/bin/sh' > semester
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester
```
6. 
```
(base) ➜  missing ./semester 
zsh: permission denied: ./semester
```
```
(base) ➜  ls -l
-rw-r--r--  1 rqren  staff  61 23 Nov 21:45 semester
```
Permission problem: required the permission of 'x'

7. 
``` console
(base) ➜ sh ./semester
```
Succeeded!

8. 
```
man chmod
``` 
9. 

```
(base) ➜  missing chmod u=rwx semester
(base) ➜  missing ls -l
-rwxr--r--  1 rqren  staff     61 23 Nov 21:45 semester
```
```
./semester
```
Succeeded!

10. 
```
./semester | grep  Last-Modified > ~/last-modified.txt 
```
11. 
MacOS exempted.