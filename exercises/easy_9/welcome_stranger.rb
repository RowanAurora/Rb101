# Problem:
# Write a method that takes 2 arguments, an array and a hash
# -The array will contain 2 or more elements that when combined with spaces will be a name
# -The hash will have 2 keys :title and :occupation and appropriate values

# The method should return a greeting that uses the persons full name, and mentions the persons 
# title and occupation

# Data structures:
# -The method takes an array and a hash argument
# -The method returns a string
# -ultimatly is calling the correct values for the hash and joining the array
# -interpolating those into a string

# algorithm
# CAn either extract the values and insert them or extract them in the interpolation

# -In a string
#   - interpolate the array.join with " " as a delimitor
#   -call the value of title from the hash
#   -call the value of occupation
#   -return the string

# code:

def greetings(array, hash)
  "Hey, #{array.join(" ")}!" + 
  " Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
