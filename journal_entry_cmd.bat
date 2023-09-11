@echo off
:: Planning out the code
:: [Today's date] > journal_entry.txt
:: add more content/formatting
:: have variable for amount of template entries -> use for loop using variable given
:: assuming %1 gets it as string, transfer into variable with set /A no-entries=%1
:: (/A is for when value needs to be numeric)

:: Print DATE (already formatted well) and start new file
echo %DATE%: > journal_entry.txt
echo filler_text_here. >> journal_entry.txt
:: Create variable month-short and set it to ...
::Set month-short=Jan. Feb. Mar. Apr. Ma. Jun. Jul. Aug. Sept. Oct. Nov. Dec.
::echo %month-short% >> journal_entry.txt
:: To explain...
for /f %%i in ('powershell ^(get-date^).DayOfWeek') do (set dow=%%i)
:: Add day of week to the file
echo %dow%,  >> journal_entry.txt
powershell -command "{get-date -f 'dddd MMM. dd, xx:xx \to hh:mm (x \h xx \min - a\t \ho\me):'}" >> journal_entry.txt
:: Opens the file
start notepad journal_entry.txt