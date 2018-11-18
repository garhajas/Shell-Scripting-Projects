#!/bin/bash
value1=$1 	# first parameter
operator=$2 # second parameter
value2=$3 	# third parameter
zero=0; 	# decalring variable

div(){
if [[ $value2 != $zero ]] # if (divisor != 0) then simply divide integers
then
	echo $((value1/value2))
else 						# else display this message
	echo "Division-by-zero Error!"
fi
}

error(){
	echo "Usage - ./calculator.sh value1 operator value2"
	echo "where,"
	echo "value1: numeric value"
	echo "value2: numeric value"

}

if [ $# -gt 3 ]
	then
	error

elif [ $# -eq 0 ]
	then
	error

elif [ "$2" == "+" ]
	then
	echo $((value1+value2))

elif [ "$2" == "-" ]
	then
	echo $((value1-value2))

elif [[ $2 == / ]]
	then
	div # calls div() function

elif [ "$2" == "x" ]
	then
	echo $((value1*value2))
else
	error

fi
