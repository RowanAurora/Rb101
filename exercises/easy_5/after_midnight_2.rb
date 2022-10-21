# take a string and seperate it by :
# numbers on the right can be added just so
# numbers on the left x 60 to convert to minutes
# add together and return
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(string)
  arr = string.split(':').map(&:to_i)
  arr[0] *= MINUTES_PER_HOUR
  arr.sum == MINUTES_PER_DAY ? 0 : arr.sum
end


def before_midnight(string)
  arr = string.split(':').map(&:to_i)
  arr[0] *= MINUTES_PER_HOUR  
  return 0 if arr.sum == 0 || arr.sum == MINUTES_PER_DAY
  MINUTES_PER_DAY - arr.sum
end
p after_midnight('00:00') == 0
p before_midnight('00:00') 
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') 