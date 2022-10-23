def uppercase?(string)
  string == string.upcase ? true : false
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# in a more refined version, empty strings would return false
# the string is not upcased, its empty