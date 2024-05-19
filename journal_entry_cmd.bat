@echo off setlocal

:: TODO
:: Check for leap year for the month's key number
:: Naming conventions and organization
:: Optimize spacing (currently adding useless spaces cause of improper spacing)

:: PLANNING OUT THE CODE
:: [Today's date] > journal_entry.txt
:: add more content/formatting
:: have variable for amount of template entries -> use for loop using variable given
:: assuming %1 gets it as string, transfer into variable with set /A no-entries=%1
:: (/A is for when value needs to be numeric)
:: ideally, would have key value pairs and set dayofweek from that (loop prob better)
:: how to know which day of week based on %date% (from website):
:: take last two digits of year
:: add to that 1/4 of itself (no remainder)
:: add day of month and key number for month (view website)
:: -1 from the sum
:: divide by 7 -> remainder is day of week
:: if no remainder, day is saturday

:: GETTING D.O.W.
SET /a dow=%DATE:~2,2%
SET /a dow=dow/4 + dow
SET /a dom=%DATE:~8,2%
SET month=%DATE:~5,2%
::IF %month:~0,1%==0 SET /a month
::IF "%month:~0,1%" == "0" SET /a "month=%month:~1%"
SET /a month_key=0

:: ACTUAL CODE
:: Empty the file and print DATE (already formatted well)
echo %DATE%: > journal_entry.txt
echo Today I . >> journal_entry.txt
:: Create variable month-short and set it to ...
::Set month-short=Jan. Feb. Mar. Apr. Ma. Jun. Jul. Aug. Sept. Oct. Nov. Dec.
::echo %month-short% >> journal_entry.txt
:: To explain...
:: for /f %%i in ('powershell ^(get-date^).DayOfWeek') do (set dow=%%i)
:: Add day of week to the file
echo %dow%, %dom%, %month% >> journal_entry.txt
:: Opens the file
start notepad journal_entry.txt

:: FOR DEVELOPMENT
:: Empty all variables to track changes
SET dow=
SET dom=
SET month=
SET month_key=