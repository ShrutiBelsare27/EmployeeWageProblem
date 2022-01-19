#!/bin/bash
isPartTime=0;
isFullTime=1;
empRatePerHr=20;
maxHrInMonth=100;
numWorkingDay=20;
total_working_hrs=0;
total_working_days=0;
check_attend=$(( $RANDOM % 2));
function getworkhour()
{
    work=$1
    case $work in 
            0)
                empHrs=8
                echo $empHrs ;;
            1)  
                   empHrs=4
                   echo $empHrs ;;
            esac
}

case $check_attend in
0)echo Employee is present;
        while (($total_working_hrs < $maxHrInMonth && $total_working_days < $numWorkingDay))
	do
	(( total_working_days++ ))
	work=$(($RANDOM%2))
	Hours="$(getworkhour $work)"
     	total_working_hrs=$(($total_working_hrs + $Hours));
	total_wage=$(($total_working_hrs*$empRatePerHr));
	echo  $total_wage
      done
       
       ;;
1)
echo emp is absent;;
esac

