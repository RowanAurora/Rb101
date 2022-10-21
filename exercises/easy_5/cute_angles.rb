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
SECONDS_PER_MINUTE = MINUTES_PER_DEGREE * 60
DEGREE = "\xC2\xB0"


def dms(float)
  arr = float.to_s.split('.')
  minute =  arr.last.prepend('.').to_f * 60
  arr_2 = minute.to_s.split('.')
  seconds = arr_2.last.prepend('.').to_f * 60
  %(#{arr[0]}#{DEGREE}#{arr_2[0]}'#{seconds.round(0)})
end

dms(76.73)

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")