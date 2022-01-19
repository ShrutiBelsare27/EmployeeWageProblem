#!/bin/bash -x
isPresent=1;
isPartTime=0;
isFullTime=1;
empRatePerHr=20;
numWorkingDay=20
totalDays=31
check_attend=$(( $RANDOM % 2));
case $check_attend in
0)echo Employee is present;
       for (( day=1;day<=numWorkingDay;day++ )) 
       do
	work=$(($RANDOM%2))
	case $work in
	0)empHrs=8;
	echo "Day" $day " FullTime"
    	FullTime=$(($FullTime+1))
 	wage_per_day=$(($empHrs*$empRatePerHr));
        echo "wage per day is: $wage_per_day"
	wagePerMonth=$(($wage_per_day*$FullTime));
	;;
	1)
	empHrs=4;
	echo "Day" $day " partTime"
    	partTime=$(($partTime+1))
	wage_per_day=$(($empHrs*$empRatePerHr));
	echo "wage per day  is : $wage_per_day"
	wagePerMonth1=$(($wage_per_day*$partTime));
     	;;
 	esac
	done       
       totalSalary=$(($wagePerMonth+$wagePerMonth1))
	echo "Total salary "$totalSalary
;;

1)

echo employee is absent;;
esac
