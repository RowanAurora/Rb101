=begin
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:

Copy Code
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
=end
=begin
P - Understand the Problem
Problem:Write a method that takes a string and returns a new string,
with every other character uppcase and the rest downcase.
characters that are not letters shoudl be unchanged but count as characters when switching between up and lower

Implicit rules:

Explicit rules:

Input:string

Output: string with alternating case


E - Examples Test cases
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
initiliaze a variable switch to `true`
Iterate through the characters, alternating the case
- if conditional 
  - on true, upcase the chacter then reassign switch to `false`
  -on false, downcase teh character then reassign switch to `true`
return new string. 

C - Code (with intent)
=end
def staggered_case(words)
  switch = true
  result = words.chars.map do |char|
    if switch == true
      switch = false
      char.upcase
    elsif switch == false
      switch = true
      char.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'