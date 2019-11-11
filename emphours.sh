#!/bin/bash -x
partTime=1
FullTime=2
TimePerHour=20
totalSalary=0

randomCheck=$((RANDOM % 3))
for(( day=1; day<=TimePerHour; day++ ))
do
	if [ $FullTime -eq $randomCheck ]
	then
		emphours=8
		salary=$(( $emphours * $randomCheck ))
	elif [ $partTime -eq $randomCheck ]
	then
		emphours=4
		salary=$(( $emphours * $randomCheck ))
	else
		emphours=0
fi
done

totalSalary=$(( $salary + $totalSalary ))
echo $totalSalary
