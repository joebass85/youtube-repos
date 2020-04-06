#!/bin/bash
echo "This is Bash"
x=1
while [ $x -lt 11 ];
do
	echo "This is number $x!"
	x=$(($x+1))
done
