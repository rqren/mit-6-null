1. 
```
ls -alhtG
```
2. 
Very hard for me to escape the spaces!!!!
```
marco () {
    pwd | sed 's/ /\\ /g' >/tmp/marco_dir
}
polo () {
    cd </tmp/marco_dir
}
```


> echo $(pwd) > /tmp/marco.tmp

> cd "$(cat /tmp/marco.tmp)"

> foo/ $ ls
marco.sh polo.sh
foo/ $ bash marco.sh
foo/ $ chmod +x polo.sh
foo/ $ mkdir test
foo/test $ cd test
foo/test $ . ../polo.sh
foo/ $ 

3. 

`>&2` redirects the output to `stderr`
- `0`: stdin
- `1`: stdout
- `2`: stderr

```
#!/usr/bin/env bash
Counter=0
while [ $Counter -lt 1000 ]; do
	echo the counter is $Counter
	let Counter=Counter+1
	sh ./Q3totest.sh >> ./Q3result 2>> ./Q3result
	if [[ $? -ne 0 ]]; then
		Counter >> ./Q3result
		break
	fi	
done
```

4. 
Failed.\
I'll try it later.

## Question 5
```
find $1 -type f -exec stat --format '%Y :%y %n' "{}" \; | sort -nr | cut -d: -f2- | head
```
find . -path '*' -type f 

find $1 -type f -exec stat --format '%Y :%y %n' "{}" \