#!/bin/bash

# function 1
function test_func1 () {
	echo "This is the first test function."
	sleep 2
	ls -Flp --color=auto
}
# function 2
test_func2 (){
	echo "This is the second test function"
	sleep 2
	ls -Flp --color=auto ~/work/
}

# Argument Handling #
if [[ "$1" != "" ]];then
	while [[ "$1" != "" ]];do
		case "$1" in
			-p|--play) shift;test_func1;;
			-h|--help) shift;echo "This is the help option.";;
			-v|--version) shift;echo "Version 1.0";;
			-vh|-hv) shift;echo "This is the help option.";echo "Version 1.0";;
			-hvp|-hpv) shift;echo "This is the help option.";echo "Version 1.0";test_func1;;
			-d|--default) shift;test_func2;;
			*) echo "Not a valid option.";exit;;
		esac
	done
else
	test_func2
fi
