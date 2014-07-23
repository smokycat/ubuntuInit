confirm() {
	while true; do
		printf "$1 (y/n) : "
		read input
		case $input in
			"y" | "Y" ) return 0;;
			"n" | "N" ) return 1;;
			* ) echo INPUT y OR n
		esac
	done
}

echoAndExec() {
	echo "------" $@
	`$@`
}
