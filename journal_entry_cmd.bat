@echo off setlocal

:: TODO
:: Naming conventions and organization

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
FOR /F "skip=1" %%A IN ('WMIC Path Win32_LocalTime Get DayOfWeek' ) DO (
  ::Setting DayOfWeek to the corresponding number
  SET dow=%%A
  ::Because there's an empty line, we leave the loop after getting our value
  GOTO :break
)
:break
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
SET month_short=%DATE:~5,2%
:: Set the month_short to the corresponding string
:: (Jan.Feb. Mar. Apr. Ma. Jun. Jul. Aug. Sept. Oct. Nov. Dec.)
IF "%month_short%"=="01" (
    SET month_short=Jan.
) ELSE IF "%month_short%"=="02" (
	SET month_short=Feb.
) ELSE IF "%month_short%"=="03" (
    SET month_short=Mar.
) ELSE IF "%month_short%"=="04" (
    SET month_short=Apr.
) ELSE IF "%month_short%"=="05" (
    SET month_short=Ma.
) ELSE IF "%month_short%"=="06" (
    SET month_short=Jun.
) ELSE IF "%month_short%"=="07" (
    SET month_short=Jul.
) ELSE IF "%month_short%"=="08" (
    SET month_short=Aug.
) ELSE IF "%month_short%"=="09" (
    SET month_short=Sept.
) ELSE IF "%month_short%"=="10" (
    SET month_short=Oct.
) ELSE IF "%month_short%"=="11" (
    SET month_short=Nov.
) ELSE IF "%month_short%"=="12" (
    SET month_short=Dec.
)
:: GETTING DAYOFMONTH
SET /a dom=%DATE:~8,2%
::GETTING CURRENT HOUR
SET /a hour2=%TIME:~0,2%
::GETTING CURRENT MINUTE
SET /a minute2=%TIME:~3,2%
::SET VARIABLE TO CONTINUE THE LOOP
SET continue_loop=Y
:more_to_process
    if %continue_loop% == Y (
        ::GETTING TIME SPENT
        SET /p hour_diff=Hours spent on task:
        SET /p minute_diff=Minutes spent on task:
        ::GETTING STARTED HOUR
        SET /a hour1=%hour2% - %hour_diff%
        ::GETTING STARTED MINUTE
        SET /a minute1=%minute2% - %minute_diff%
        ::GET USER INPUT FOR LOCATION
        SET /p location=Enter location:
        :: Print the next line formatted with all the variables:
        ECHO %dow%, %month_short% %dom%, %hour1%:%minute1% to %hour2%:%minute2% (%hour_diff% h %minute_diff% m - at %location%^): >>  journal_entry.txt
        ECHO <TAB>- Worked on .
        ::ASKING USER IF ANOTHER ENTRY IS NEEDED
        SET /p continue_loop=Add another entry? [Y/N]: 
        goto :more_to_process
    )
:: Opens the file
START notepad journal_entry.txt

:: FOR DEVELOPMENT
:: Empty all variables to track changes
SET dow=
SET dom=
SET month_short=
SET hour1=
SET hour2=
SET hour_diff=
SET minute1=
SET minute2=
SET minute_diff=
SET location=