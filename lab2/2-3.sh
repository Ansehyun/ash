#!/bin/bash

h=`echo "scale=2; $2/100" |bc`
bmi=`echo "scale=3; $1 / ($h * $h)" | bc`
num1=18
num2=23.5
if [ `echo "$num1 <= $bmi" |bc` -eq 1 ] && [ `echo "$bmi < $num2" |bc` -eq 1 ]; then
	echo "정상체중입니다."

elif [ `echo "$bmi <  $num1" |bc` -eq 1 ]; then
	echo "저체중입니다."

else
	echo "과체중입니다."
fi

exit 0
