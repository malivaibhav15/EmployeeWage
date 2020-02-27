#!/bin/bash -x
wagePerHour=20
fullDayHours=8
oneDayWage=0
partTimeHours=8
isPartTime=2
isFullTime=1
DayOfAMonth=20
day=0
echo "Welcome to employee wage computation"
function attendence()
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
function caseStatement()
{
	EmployeeCheck=$((RANDOM%3))
	case $EmployeeCheck in
		$isFullTime)
			echo "Employee is full time employee"
				;;
		$isPartTime)
			echo "Employee is part time employee"
				;;
		*)
			echo "No employee is there"
	esac
}
function wageOfMonth()
{
	if [[ $check -eq 1 ]]
	then
		monthlyWage=$(( $(($wagePerHour*$fullDayHours))*$DayOfAMonth ))
		echo "Monthly wage of a employee="$monthlyWage
	else
		echo "Employee is absent"
	fi
}
function wageTillConditionReachForMonth()
{
	for (( counter=1;counter<=$DayOfAMonth;counter++ ))
	do
		monthlyWage=$(( $(($wagePerHour*$fullDayHours))*$counter ))
	done
      echo "Monthly wage of a employee="$monthlyWage
}
function dailyWageWithTotalWage()
{
	while [ $day -le 20 ]
	do
		oneDayWage=$(( $(($wagePerHour*$fullDayHours))*$day ))
		Array[day]=$oneDayWage
		oneDayWage=0
		((day++))
	done
	echo "Daily wages={${Array[@]}}"
	wageOfMonth
}
attendence
dailyWage
partTimeEmployee
caseStatement
wageOfMonth
wageTillConditionReachForMonth
dailyWageWithTotalWage
