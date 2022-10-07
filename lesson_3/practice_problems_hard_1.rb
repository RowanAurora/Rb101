# 1.
# It should return nil, because there is no false condition to trigger the assigment to hello world.
# but the variable is initialized so no error

# 2.  greeting is a hash with object id. its contains a key a: and value "hi"
#     The refrence of :a "hi" is assignmed to informal_greeting
#     informal_greeting is mutated therefore, the value object "hi" is also mutated
#     The result of puts greeting should be printing the hash as {a=>"hi there"} as the value 
#     was mutated from hi to hi there by << acting on informal_greeting, which points to the same place as a:

# 3.  a) should print one is one, two is two, three is three. the variable assignment in the methord
#        will have no effect on the variable outside the method.
#     b) the same thing, the only change is reassignment within the method from variable to variable and
#        to variable to string.
#     c) in c because the method gsub! is mutating, the variables will be changed and replaced ie
#        "one is two" "two is three" "three is one"

# 4. revisit

# needs to return false if there are not 4 sections seperated by . and needs to return false if
# not between 0 & 255
#last evaluated line returns so no need for "return true"
#needs loop to validate each section one by one. iterator might work?

def is_an_ip_number?(input_string)
(0...255).include?(input_string.to_i) 
end 



def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
   true
end