=begin
Write a method that takes a string as an argument, 
and returns true if all parentheses in the string are properly balanced, false otherwise. 
To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

input:string

output: booleen based on properly balanced ()

Problem: We need to check if the () in a string are properly balanced.
( must occur before ). if ) occurs first, balance can not be achieved
false if odd number of ()
Scratch:

Think of balancing an equation, left and right hace to mirror

algorithm:

Iterate through the characters in the string
add 1 for every (
sub 1 for every )
break if below zero
If the total count is zero, it is balanced
any other number is false

code 
=end

def balanced?(words)
  count = 0
  words.each_char do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    break if count < 0
  end
  count == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false