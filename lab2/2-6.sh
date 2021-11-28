#!/bin/sh

if [ ! -d $1 ]; then
	mkdir $1
	cd $1
	for i in 0 1 2 3 4
	do
		str="touch file$i.txt"
		eval $str
	done
	tar cvf files.tar *
	mkdir $1
	tar xfv files.tar -C ./files
	
fi

exit 0
