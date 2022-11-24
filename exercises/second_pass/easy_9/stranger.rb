# =begin
# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, 
# when combined with adjoining spaces, will produce a person's name. 
#   The hash will contain two keys, :title and :occupation, and the appropriate values. 
#   Your method should return a greeting that uses the person's full name, 
#   and mentions the person's title and occupation.

# Example:

# Copy Code
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# =begin
# P - Understand the Problem
# Problem: CREATE A METHOD THAT TAKES 2 ARGUMETNS AN ARRAY AND A HASH. The array will have two or more elements
# that when combine with spaces will produce a persons name. the hash will contain two keys, :title and :occupation
# and appropriate values.  
# Return a greeting that uses the persons full name and mentions thier title and occupation

# Implicit rules:

# Explicit rules:

# Input:1 array, 1 hash

# Output: string with full name title and job


# E - Examples Test cases

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# D - Data Structure

# A - Algorithm (Fully fleshed out logic of code chunk)
# Combine the full name with spaces as delimeters
# retrieve the values from the hash
# interpolate both into a string

# C - Code (with intent)
# =end

def greetings(array, hash)
  "Well, #{array.join(" ")}, aren't we a little #{hash[:title]} #{hash[:occupation]}!"
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
