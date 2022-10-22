# problem: write a method that takes a string as an arugment and returns a new string
# in which the case of letters are swapped
# rules
# -other characters must stay the same
# -may not use String#swapcase

# test
# if ('a'..'z').include?('b')
#   element.upcase
# elsif ('A'..'Z').include?(element)
#   element.downcase
# else
#   element

#   data structures:
#   string input
#   array of characters of the string

# algorithm
# - Take string input and break into array of characters
# -iterate through the array swapping the case of each character
#   - using conditional ifs, check the case of the character
#   -if lowercase, call upcase
#   -if uppercase call downcase
# -return new string

def swapcase(string)
  string.chars.map do |element|
    if ('a'..'z').include?(element)
      element.upcase
    elsif ('A'..'Z').include?(element)
      element.downcase
    else
      element
    end
  end.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# if char =~[a-z] regex