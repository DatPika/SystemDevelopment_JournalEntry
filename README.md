# JournalEntry Script

## Reason:
Why spend 20 seconds every time changing text in the entry to today's date manually, when you could spend 50 hours developing an automated solution that does it for you?

### A journal entry typically looks like this:
>*yyyy*-*mm*-*dd*:
>Today I *what-i-did*.
>*Weekday*, *Mo.*[^f1] *dd*, *hh1*:*mm1* to *hh2*:*mm2* (*hh2 - hh1* h *mm1 - mm2* min[^f2] – at *school*[^f3]):
>	- *what-i-did*
>*Weekday*, *Mo.* *dd*, *hh1*:*mm1* to *hh2*:*mm2* (*hh2 - hh1* h *mm1 - mm2* min – at *home*):
>	- *more-of-what-i-did*
>*Weekday*, *Mo.* *dd*, Total time: *hht* h *mmt* min[^f4]

[^f1]: Mo. means short form of month (==Sept.==, ==Oct.==, etc.)
[^f2]: How much time you spent on the task
[^f3]: \[school, home, bus, etc.\]
[^f4]: The *hh* *mm* total time spent during the day


## Explanation
Journal entries have common elements, such as current date formats, a certain number of work sections, location where the work section was done, etc. Instead of manually copy and pasting a previous entry and then modifying all the information, this could be done automatically through a script.

### Note:
This script uses a formula from a *[website](https://www.almanac.com/how-find-day-week)* to find the day of the week from the date, and with it's current iteration only works until 2099. However, this could be changed to a funky loop that I don't yet understand to get the date from WMIC