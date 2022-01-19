#!/bin/bash -x
isPresent=1;
check_attend=$(( $RANDOM % 2));
echo $check_attend;
if [ $isPresent -eq $check_attend ]
then
	echo Employee is present;
else
	echo Employee is absent ;
fi
