#!/bin/bash -x
isPresent=1;
isPartTime=0;
isFullTime=1;
empRatePerHr=20;
check_attend=$(( $RANDOM % 2));
case $check_attend in
0)echo Employee is present;
	work=$(($RANDOM%2))
	case $work in
	0)empHrs=8;
 	salary=$(($empHrs * $empRatePerHr));
  	echo $salary;;
	1)
	empHrs=4;
	salary=$(($empHrs*$empRatePerHr));
	echo $salary;;
	esac       
;;
1)

echo emp is absent;;
esac
