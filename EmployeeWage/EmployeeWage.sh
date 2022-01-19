#!/bin/bash -x
isPresent=1;
check_attend=$(( $RANDOM % 2));
echo $check_attend;
if [ $isPresent -eq $check_attend ]
then
	WagePerHour=20;
        FullDayHour=8;
	emp_Daily_wage=$(($WagePerHour * $FullDayHour));
        
	echo "Employee wage is: $emp_Daily_wage";
else
        echo "Employee is absent"
fi    
