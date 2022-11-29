=begin
PROBLEM: Change the code to count down from 10 to 1

The Helper method was not reassigning counter so it remained 10 outside of the scope of the decrease method.
Adding `counter =` on line 9 fixes this 
We can also call .times on counter to countdown
=end 

def decrease(counter)
  counter -= 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'