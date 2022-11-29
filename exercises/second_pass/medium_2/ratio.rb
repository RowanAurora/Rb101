=begin
In the easy exercises, we worked on a problem where we had to count the number
 of uppercase and lowercase characters,
 as well as characters that were neither of those two. 
 Now we want to go one step further.

Write a method that takes a string,
 and then returns a hash that contains 3 entries:
  one represents the percentage of characters in the string that are lowercase letters,
   one the percentage of characters that are uppercase letters, 
   and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Problem: Write a method that takes a string and returns a hash containing the percentage of each char type as values
and lowercase, uppercase and niether as keys.

algorithm.
Initialize char_type has
Generate two range objects for uppercase and lowercase letters
- check against both and incriment value in hash accordingly 
Niether  = total_characters - (uppercase +lowecase)
To get percentage, divide numberator by demononator and multiply by 100
record in hash rounded to 1 decimanal

code = 
=end

# def percentafier(char_type, string)
#   keys = char_type.keys
#   keys.each do |key|
#     char_type[key] = (char_type[key].to_f / string.size * 100).round(1)
#   end
#   char_type
# end

# def letter_percentages(string)
#   char_type = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}
#   string.chars.each do |char|
#     if ('a'..'z').include?(char)
#       char_type[:lowercase] += 1
#     elsif ('A'..'Z').include?(char)
#       char_type[:uppercase] += 1
#     else
#       char_type[:neither] += 1
#     end
#   end
#   percentafier(char_type, string)
# end

# p letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
# p letter_percentages('abcdefGHI')

# ~= /[a-z]/ to check how many of each type are included

def percentafier(char_type, string)
  keys = char_type.keys
  keys.each do |key|
    char_type[key] = (char_type[key].to_f / string.size * 100).round(1)
  end
  char_type
end

def letter_percentages(string)
  chars = string.chars
  char_type = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}
  char_type[:lowercase] = chars.count { |char| char =~ /[a-z]/ }
  char_type[:uppercase] = chars.count { |char| char =~ /[A-Z]/ }
  char_type[:neither] = chars.count { |char| char =~ /[^a-zA-Z]/ }

  percentafier(char_type, string)
end
p letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
