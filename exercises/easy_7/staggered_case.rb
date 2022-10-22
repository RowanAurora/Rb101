LETTERS = ("A"..'z')

def staggered_case(string)
count = 0
arr = string.chars
loop do
  break if count == string.size
  if count.even?
    arr[count].upcase!
  else
    arr[count].downcase!
  end
  count += 1
end
arr.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS') 
p staggered_case('ignore 77 the 444 numbers') 