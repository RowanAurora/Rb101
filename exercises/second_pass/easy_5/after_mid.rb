=begin
P - Understand the Problem
Problem: Write a method that takes a integer  and returns the time
        before midnight if negative, after if positive.

Implicit rules:

Explicit rules:
-accept + or - integers
- + integers represent minutes after midnight
- - integers represent minuntes before mid night
- No use of Date or Time class

Input: integer

Output: string with time value


E - Examples Test cases

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

scratch pad
minutes in hour = 60
hoursin day = 24
div mod is the key here
sprintf("%0.2d", int)
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Take input and get and record quotient and remainder
% qoutient by 24 to recieve hours
% 24 remainder to recieve minutes
format both
return

C - Code (with intent)
=end
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
def time_of_day(number)
  hours, minutes = number.divmod(MINUTES_PER_HOUR)
  hours = hours % 24
  minutes = minutes % 60
  "#{sprintf("%0.2d", hours)}:#{sprintf("%0.2d", minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"