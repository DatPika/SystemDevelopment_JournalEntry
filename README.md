# JournalEntry Script

## Reason:
Why spend 20 seconds every time changing text in the entry to today's date manually, when you could spend 50 hours developing an automated solution that does it for you?

### A journal entry typically looks like this:

>#### Specific values example
>**2023-09-07:**  
>Today I prepared this. I also worked on this and that.  
>Thursday, Sept. 07, 14:30 to 15:50 (1 h 20 min – at school):  
>&nbsp;&nbsp;&nbsp;&nbsp;- Prepared this by looking at that and that.  
>Thursday, Sept. 07, 21:00 to 23:10 (2 h 10 min – at home):  
>&nbsp;&nbsp;&nbsp;&nbsp;- Worked on this part of that.  
>Thursday, Sept. 07, 23:10 to 23:55 (0 h 45 min – at home):  
>&nbsp;&nbsp;&nbsp;&nbsp;- Worked on that.  
>Thursday, Sept. 07, Total time: 4 h 15 min

>#### General format
>__*<ins>yyyy</ins>*-*<ins>mm</ins>*-*<ins>dd</ins>*:__  
>Today I *<ins>what-i-did</ins>*.  
>*<ins>Weekday</ins>*, *<ins>Mo.</ins>*[^f1] *<ins>dd</ins>*, *<ins>hh1</ins>*:*<ins>mm1</ins>* to *<ins>hh2</ins>*:*<ins>mm2</ins>* (*<ins>hh2</ins> - <ins>hh1</ins>* h *<ins>mm1</ins> - <ins>mm2</ins>* min[^f2] – at *<ins>school</ins>*[^f3]):
>&nbsp;&nbsp;&nbsp;&nbsp;- *<ins>What-i-did</ins>*.  
>*<ins>Weekday</ins>*, *<ins>Mo.</ins>* *<ins>dd</ins>*, *<ins>hh1</ins>*:*<ins>mm1</ins>* to *<ins>hh2</ins>*:*<ins>mm2</ins>* (*<ins>hh2</ins> - <ins>hh1</ins>* h *<ins>mm1</ins> - <ins>mm2</ins>* min – at *<ins>home</ins>*):  
>&nbsp;&nbsp;&nbsp;&nbsp;- *<ins>More-of-what-i-did</ins>*.  
>*<ins>Weekday</ins>*, *<ins>Mo.</ins>* *<ins>dd</ins>*, Total time: *<ins>hht</ins>* h *<ins>mmt</ins>* min[^f4]

[^f1]: Mo. means short form of month (Sept., Oct., etc.)
[^f2]: Total time spent on the task
[^f3]: \[school, home, bus, etc.\]
[^f4]: Total time spent throughout the day

### Note:
This script uses a formula from a *[website](https://www.almanac.com/how-find-day-week)* to find the day of the week from the date, and with it's current iteration only works until 2099. However, this could be changed to a funky loop that I don't yet understand to get the date from WMIC