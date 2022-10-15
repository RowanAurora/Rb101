def real_palindrome?(string)
  validation = [*('a'..'z'), *('0'..'9')]  
  char_only = string.downcase.chars.select do |chars| 
    validation.include?(chars)
  end
  char_only == char_only.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

#gsub or tr ? too many non alphanumerics to account for when i dont know regex

