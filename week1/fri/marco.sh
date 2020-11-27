marco () {
       pwd | sed 's/ /\\ /g'  >/tmp/marco_dir
}
polo () {
	cd </tmp/marco_dir
}
