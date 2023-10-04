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
[Font tags are to make the placeholders more obvious.]: #
>__*<font color="silver">yyyy</font>*-*<font color="silver">mm</font>*-*<font color="silver">dd</font>*:__  
>Today I *<font color="silver">what-i-did</font>*.  
>*<font color="silver">Weekday</font>*, *<font color="silver">Mo.</font>*[^f1] *<font color="silver">dd</font>*, *<font color="silver">hh1</font>*:*<font color="silver">mm1</font>* to *<font color="silver">hh2</font>*:*<font color="silver">mm2</font>* (*<font color="silver">hh2</font> - <font color="silver">hh1</font>* h *<font color="silver">mm1</font> - <font color="silver">mm2</font>* min[^f2] – at *<font color="silver">school</font>*[^f3]):
>&nbsp;&nbsp;&nbsp;&nbsp;- *<font color="silver">What-i-did</font>*.  
>*<font color="silver">Weekday</font>*, *<font color="silver">Mo.</font>* *<font color="silver">dd</font>*, *<font color="silver">hh1</font>*:*<font color="silver">mm1</font>* to *<font color="silver">hh2</font>*:*<font color="silver">mm2</font>* (*<font color="silver">hh2</font> - <font color="silver">hh1</font>* h *<font color="silver">mm1</font> - <font color="silver">mm2</font>* min – at *<font color="silver">home</font>*):  
>&nbsp;&nbsp;&nbsp;&nbsp;- *<font color="silver">More-of-what-i-did</font>*.  
>*<font color="silver">Weekday</font>*, *<font color="silver">Mo.</font>* *<font color="silver">dd</font>*, Total time: *<font color="silver">hht</font>* h *<font color="silver">mmt</font>* min[^f4]

[^f1]: Mo. means short form of month (Sept., Oct., etc.)
[^f2]: Total time spent on the task
[^f3]: \[school, home, bus, etc.\]
[^f4]: Total time spent throughout the day

### Note:
This script uses a formula from a *[website](https://www.almanac.com/how-find-day-week)* to find the day of the week from the date, and with it's current iteration only works until 2099. However, this could be changed to a funky loop that I don't yet understand to get the date from WMIC