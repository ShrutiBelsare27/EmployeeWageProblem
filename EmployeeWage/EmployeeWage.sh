#!/bin/bash -x
isPresent=1;
isPartTime=0;
isFullTime=1;
empRatePerHr=20;
check_attend=$(( $RANDOM % 2));
echo $check_attend;
if [ $isPresent -eq $check_attend ]
then
echo Employee is present;
work=$(($RANDOM%2))
if [ $work -eq $isFullTime ]
then
empHrs=8;
salary=$(($empHrs * $empRatePerHr));
echo $salary;
else
empHrs=4;
salary=$(($empHrs*$empRatePerHr));
echo $salary;
fi        
else
echo emp is absent;
fi
