#!/bin/bash

main () {
items="st
geany
surf
htop
exit"

selection=$(echo "$items" | dmenu -i -l 5 -p "Pick a program to launch")
case "$selection" in
	st) st &> /dev/null;main;;
	geany) geany;main;;
	surf) surf st.suckless.org;main;;
	htop) st -e htop &> /dev/null;main;;
	exit) exit;;
esac
}
main
