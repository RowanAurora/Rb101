# P - Problem
# write a method that takes an integer representing minutes and returns the time it represents
# - positive being after midnight
# -negatice being before mindnight
# rules
# - do not use Date or Time classes
# - return in 24 hour formate hh:mm

# E - Examples / Test cases
# 60 == 01:00
#  % 60 can be used to calculate the minute side 
# / 60 can give hours
# need to auto reset to 0 at 24
# if over 24 - 24?
# D - Data Structure

# A - Algorithm

# C - Code

def time_of_day(num)
  mins = num % 60
  hour = (num / 60).divmod(24).last
  format('%02d:%02d', hour, mins)
end

p time_of_day(0) 
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

# def single_day(num)
#   while num < 0
#     num += MINUTES_PER_DAY
#   end

#   num % MINUTES_PER_DAY
# end

# def time_of_day(num)
# num = single_day(num)
# hours, minutes = num.divmod(MINUTES_PER_HOUR)
# format('%02d:%02d', hours, minutes)
# end


#line 1 takes num variable, passes to single_day method
  #single day line 1
  # -evaluate variable
  # single day line 2
  # -increment the variable by a constant
  #return the value of num
  #pass num to % operator and return result
#line 2 pass num to divmod method with the a constant as an argument
# Return an array of the result of divmod, automatically assinging them to hours, minutes
#line 3 pass both as arguments to the format kernal method with %02d:%02d as other argument
#return properly formatted result

