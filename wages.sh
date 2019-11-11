#!/bin/bash -x

# CONSTANTS 
partTime=1
FullTime=2
inMonth=4
workingDays=20
empRateHour=20
totalWorkHours=0
totalSalary=0
counter=0

# VARIABLES
totalEmpHr=0
totalWorkingDays=0
wagePerDay=0

function getWorkingHours()
{
	case $1 in $FullTime)
		workHours=8;;
  		$partTime)
		workHours=4;;
		*)
		workHours=0;;
esac
echo $workHours
}

function wages()
{
	wage=$(( $1 * $empRateHour ))
	echo $wage
}
while [[ $totalWorkHours -lt $workingDays && $totalWorkingDays -lt $workingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	wagePerDay="$( wages $((workHours)) )"
	Employee[ ((counter++)) ]=$wagePerDay
	totalWorkHours=$(($totalWorkHours + $workHours))
done
totalWages=$(( $totalWorkingDays*$totalWorkHours ))
totalSalary=$(( $totalWorkingDays*$totalWages ));
Employee[ ((counter++)) ]=$totalWages
echo "totalWages"
echo ${Employee[@]}

