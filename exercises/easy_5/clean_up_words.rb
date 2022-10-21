problem:
Write a method that takes a string with lowercase letters and non alphabetic characters
and returns a string with the non alphabetic characters replaced by spaces
rules
explicit
- if many occur in a row, only one space should appear
- there should only be one space, never consecutive spaces
- all characters will be lowercase
Implicit
- current spaces count as non alphabetic characters


("---what's my +*& line?").tr_s('^a-z', ' ')

def clean_up(string)
  string.tr_s('^a-z', ' ')
end

# similar to second given solution, tr seems to be a newer method

def clean_up(text)
text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

