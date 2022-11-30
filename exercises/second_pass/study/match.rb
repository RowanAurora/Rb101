=begin
Write a method that takes a string as an argument,
and returns true if all parentheses in the string are properly balanced, 
false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
Problem: 
Write a method, returns true uf parenthasis are properly balanced. must start with ( not )
Rules
-Must come in even pairs , starting with (
-cant end with (


Balancing an equations basically

Algorithm:
Break string into characters `arr`` 
Generate tracker = 0

Iterate through `arr`
Add 1 to tracker for every (
subtract 1 from tracker for every )
If tracker is != 0 at the end, return false
Its tracker is 0 return true

=code
=end 

def balanced?(str)
  arr = str.chars
  tracker = 0
  arr.each do |char|
    if  char == '('
      tracker += 1 
    elsif char == ')'
      tracker -= 1
    end
    return false if tracker < 0
  end
  tracker == 0
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false