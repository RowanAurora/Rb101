CONSONANTS = "ABCDFGHJKLMNPQRSTVWXYZabcdfghjklmnpqrstvwxyz" 
def double_consonants(string)
  new_string = ''
  string.each_char do |char|
    new_string += char if (CONSONANTS).include?(char)
    new_string += char 
  end
  new_string
end

p double_consonants('String')
p double_consonants("Hello-World!") 
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""