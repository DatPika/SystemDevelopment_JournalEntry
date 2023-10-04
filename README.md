# JournalEntry Script

## Reason:
Why spend 20 seconds every time changing text in the entry to today's date manually, when you could spend 50 hours developing an automated solution that does it for you?

A journal entry typically looks like this:


## Explanation
Journal entries have common elements, such as current date formats, a certain number of work sections, location where the work section was done, etc. Instead of manually copy and pasting a previous entry and then modifying all the information, this could be done automatically through a script.

### Note:
This script uses a formula from a *[website](https://www.almanac.com/how-find-day-week)* to find the day of the week from the date, and with it's current iteration only works until 2099. However, this could be changed to a funky loop that I don't yet understand to get the date from WMIC