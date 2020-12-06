marco () {
       pwd | sed 's/ /\\ /g'  >/tmp/marco_dir
}
polo () {
	cd <$(cat /tmp/marco_dir)
}
