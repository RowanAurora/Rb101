# problem: write a method that takes a floating point number that represetns an agle
# 90-360 and reutn a string that represents that angle in degrees minutes and seconds.
# rules
# -use degree symbol for degree, ' for minutes and " for seconds
# -a degree has 60 minutes
# - a minute has 60 seconds
# dms(76.73) == %(76°43'48")

# .73 * 60 = 43.80
# .80 * 60 = 48 
# - need to take the number before the decimal point as the degree
# - the number after the decimal point * 60 is  minute
# - the number after that decimal point * 60 is seconds


# (76.73).to_s.split('.').last.prepend('.')

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
DEGREE = "\xC2\xB0"


def dms(float)
 seconds = (float * SECONDS_PER_DEGREE).round
 degrees, remaining_seconds = seconds.divmod(SECONDS_PER_DEGREE)
 minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
 format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(76.73)

p dms(30) 
p dms(76.73) 
p dms(254.6)
p dms(93.034773) 
p dms(0)  
p dms(360) 