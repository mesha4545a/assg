#What happens if you parse a string that contains invalid dates?
ymd(c("2010-10-10", "bananas"))
#faild 
#What does the tzone argument to today() do? Why is it important?
? today() 
#a character vector specifying which time zone you would like the current time
#in. tzone defaults to your computer's system timezone. You can retrieve
#the current timein the Universal Coordinated Time (UTC) with now("UTC").


#Use the appropriate lubridate function to parse each of the following dates:
d1 <- "January 1, 2010"
d2 <- "2015-Mar-07"
d3 <- "06-Jun-2017"
d4 <- c("August 19 (2015)", "July 1 (2015)")
d5 <- "12/30/14" # Dec 30, 2014
mdy(d1)
ymd(d2)
dmy(d3)
mdy(d4)
mdy(d5)
