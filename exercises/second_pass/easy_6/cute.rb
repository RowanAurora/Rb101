=begin
P - Understand the Problem
Problem: Write a method that takes a floating point numbert hat represents an agnle between
          0 and 360, and returns a string that represents that angle, in degrees, minutes and seconds.


Implicit rules:

Explicit rules:
-Use a degree symbolfor degrees
-use a ' for minutes and " for seconds.
- a degree has 60 minutes
- a minute has 60 seconds
Input: float representing an angle. 

Output: string with degrees minutes and seconds. 

sprintf("%0.2d",
E - Examples Test cases

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Write constants that represents  degrees, minutes and seconds.

C - Code (with intent)
=end

DEGREE = "\xC2\xB0"
CONVERT = 60

def dms(float)
  degree, remainder = float.divmod(1)
  minutes, seconds = (remainder * CONVERT).divmod(1)
  seconds *= CONVERT
  "#{degree}#{DEGREE}#{sprintf("%02d", minutes)}'#{sprintf("%02d", seconds)}\""
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")
