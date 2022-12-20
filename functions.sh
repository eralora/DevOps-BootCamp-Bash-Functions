#!/bin/bash

# Put your code here

pow() {
	arg1=$1
	arg2=$2
	echo $((arg1 ** arg2))
}

shortest() {
	len=100

	for i in $*; do
		tmp=${#i}
	
		if [ $len -gt $tmp ]; then
			len=$tmp
		fi
	done

	for y in $*; do
		tmp=${#y}

		if [ $len -eq $tmp ]; then
			echo $y
		fi
	done
}

print_log(){

	date=$(date '+%Y-%m-%d %H:%M')
	echo [$date] $@

}
