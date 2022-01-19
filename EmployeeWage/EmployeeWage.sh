#!/bin/bash
empRatePerHr=20;
maxHrInMonth=100;
numWorkingDay=20;
total_working_hrs=0;
total_working_days=0;
check_attend=$(( $RANDOM % 2));
case $check_attend in
0)echo Employee is present;
        while [[ $total_working_hrs -lt $maxHrInMonth && $total_working_days -lt  $numWorkingDay ]]
	do
	(( total_working_days++ ))
	work=$(($RANDOM%2))
	case $work in
	0)empHrs=8;
      	total_working_hrs=$(($total_working_hrs + $empHrs))
        daily_wage=$(( empHrs* empRatePerHr ))
	total_wage=$(($total_working_hrs*$empRatePerHr));
	echo "Total Daily wage is $daily_wage"
	echo "The full time  employee for the month is $total_wage"
	;;
	1)
	empHrs=4;
	total_working_hrs=$(($total_working_hrs + $empHrs))
	daily_wage=$(( empHrs* empRatePerHr ))
        total_wage=$(($total_working_hrs*$empRatePerHr));
        echo "Total Daily wage is $daily_wage"
	echo "The part time employee for the month is $total_wage"
	;;
	esac       
     
      done
      echo $total_working_hrs;
      echo  $total_working_days;
       ;;
1)
echo emp is absent;;
esac
