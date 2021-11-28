#!/bin/sh

s=$1

myFunction () {
	echo "함수 안으로 들어왔음"
	str="ls $s"
	eval $str
}

echo "프로그램을 시작합니다."
myFunction
echo "프로그램을 종료합니다."

exit 0 
