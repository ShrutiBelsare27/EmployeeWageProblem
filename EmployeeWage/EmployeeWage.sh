#!/bin/bash
empRatePerHr=20;
maxHrInMonth=100;
numWorkingDay=20;
total_working_hrs=0;
total_working_days=0;
total_wage=0;
check_attend=$(( $RANDOM % 2));
function getworkhour()
{
    work=$1
    case $work in 
            0)
                 empHrs=8
                echo $empHrs;;
            1)  
                  empHrs=4
                 echo $empHrs;;
            esac
}
function get_Employee_wage()
{
 empHr=$1
 echo $(($empHr * $empRatePerHr)); 
}
case $check_attend in
0)echo Employee is present;
        while [[ $total_working_hrs -lt $maxHrInMonth && $total_working_days -lt $numWorkingDay ]]
        do
        (( total_working_days++ ))
        work=$(($RANDOM%2))
        empHour="$(getworkhour $work)"
        total_working_hrs=$(($total_working_hrs + $empHour));
        daily_wage[$total_working_days]="$( get_Employee_wage  $empHour)"; 
	total_wage=$(($(get_Employee_wage $total_working_hrs))) 
	echo "${daily_wage[@]}   ${total_wage[@]}"
      done
       ;;
1)
echo emp is absent;;
esac

