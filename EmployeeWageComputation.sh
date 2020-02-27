#!/bin/bash -x
wagePerHour=20
fullDayHours=8
oneDayWage=0
partTimeHours=8
echo "Welcome to employee wage computation"
function attendence ()
{
	check=$((RANDOM%2))
	if [[ $check -eq 1 ]]
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi
}
function dailyWage()
{
	if [[ $check -eq 1 ]]
	then
		oneDayWage=$(($wagePerHour*$fullDayHours))
		echo "Wage in one day=$oneDayWage"
	else
		echo "Wage in one day=0"
	fi
}
function partTimeEmployee()
{
	if [[ $check -eq 1 ]]
	then
		oneDayWage=$(($wagePerHour*partTimeHours))
		echo "Wage of part time employee=$oneDayWage"
	else
		echo "Wage of part time employee in one day=0"
	fi
}
attendence
dailyWage
partTimeEmployee
