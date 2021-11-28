#!/bin/sh

if [ ! -d $1 ]; then
	mkdir $1
	cd $1
	for i in 0 1 2 3 4
	do
		str="touch file$i.txt"
		eval $str
		str1="mkdir file$i"
		eval $str1
		str3="ln -s file$i.txt file$i"
		eval $str3
	done
	
	
fi

exit 0
