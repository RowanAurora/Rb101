# def penultimate(string)
#   string.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

def penultimate(string)
  if string.split.size.even?
  num = (string.split.size / 2).ceil - 1
  else
  num = (string.split.size / 2)
  end
 string.split[num]
end

p penultimate('last')
p penultimate('Launch School a is great!')

# edge case method eers to the first half for the middle on even cases
# could pass an error message instead