@echo off setlocal

:: TODO
:: Naming conventions and organization
:: Optimize spacing (currently adding useless spaces cause of improper spacing)

:: PLANNING OUT THE CODE
:: [Today's date] > journal_entry.txt
:: add more content/formatting
:: have variable for amount of template entries -> use for loop using variable given
:: assuming %1 gets it as string, transfer into variable with set /A no-entries=%1
:: (/A is for when value needs to be numeric)
:: ideally, would have key value pairs and set dayofweek from that (loop prob better)
:: to determine which day of week: wmic path win32_localtime get dayofweek

:: ACTUAL CODE
:: Empty the file and print DATE (already formatted well)
ECHO %DATE%: > journal_entry.txt
::Print simple text line
ECHO Today I . >> journal_entry.txt
:: GETTING DayOfWeek
SET /a dow=wmic path win32_localtime get dayofweek
:: Set the DayOfWeek to the corresponding string
IF "%dow%"=="0" (
    SET dow=Sunday
) ELSE IF "%dow%"=="1" (
	SET dow=Monday
) ELSE IF "%dow%"=="2" (
    SET dow=Tuesday
) ELSE IF "%dow%"=="3" (
    SET dow=Wednesday
) ELSE IF "%dow%"=="4" (
    SET dow=Thursday
) ELSE IF "%dow%"=="5" (
    SET dow=Friday
) ELSE IF "%dow%"=="6" (
    SET dow=Saturday
)
:: GETTING Month
SET month-short=%DATE:~5,2%
:: Set the month-short to the corresponding string
:: (Jan.Feb. Mar. Apr. Ma. Jun. Jul. Aug. Sept. Oct. Nov. Dec.)
IF "%month-short%"=="01" (
    SET month-short=Jan.
) ELSE IF "%month-short%"=="02" (
	SET month-short=Feb.
) ELSE IF "%month-short%"=="03" (
    SET month-short=Mar.
) ELSE IF "%month-short%"=="04" (
    SET month-short=Apr.
) ELSE IF "%month-short%"=="05" (
    SET month-short=Ma.
) ELSE IF "%month-short%"=="06" (
    SET month-short=Jun.
) ELSE IF "%month-short%"=="07" (
    SET month-short=Jul.
) ELSE IF "%month-short%"=="08" (
    SET month-short=Aug.
) ELSE IF "%month-short%"=="09" (
    SET month-short=Sept.
) ELSE IF "%month-short%"=="10" (
    SET month-short=Oct.
) ELSE IF "%month-short%"=="11" (
    SET month-short=Nov.
) ELSE IF "%month-short%"=="12" (
    SET month-short=Dec.
)
:: GETTING DAYOFMONTH
SET /a dom=%DATE:~8,2%
::GETTING CURRENT HOUR
SET /a hour2=%TIME:~0,2%
::GETTING CURRENT MINUTE
SET /a minute=%TIME:~3,2%
::GETTING STARTED HOUR TODO: have input for this
SET /a hour1=%hour2% - 1
::GETTING TIME SPENT
SET /a hour-diff=%hour2% - %hour1%
:: Print the next line formatted with all the variables:
ECHO %dow%, %month-short% %dom%, %hour1%:%minute% to %hour2%:%minute% (%hour-diff% h mm m - at school): >> journal_entry.txt
:: Opens the file
START notepad journal_entry.txt

:: FOR DEVELOPMENT
:: Empty all variables to track changes
SET dow=
SET dom=
SET month-short=
SET hour=