# 1. predicting a and c have the same object id but b is different
    # a creates the variable with object id. b creates a variable with object id.
    # c is assigned the object id of a so a and c share an id but b is seperate.

# 2. All the object will share the same Id because integers have an immutable object id.

# 3. The results should be 
# "My string looks like this now: pumpkins"
# "My array looks like this now: ["pumpkins', 'rutabega']

# << is a mutating operation so the variable array gets affected, but += is a non mutating assignment
# so my_string remains "pumpkins" 
# inside the method, the reassignment gets a new id but the mutation retains its id, so the outside array 
# that shares the id gets modified

# 4. The outputs will be
# "My string looks like this now: pumpkinsrutabega"
# "My array looks like this now: ["pumpkins"]
# The << mutates the string object but it retains the same id so it mutates inside and outside the method
# The array inside is reassigned, and gets an new object id, so an_array_param and my_array no longer share 
# the same id or value.

# 5.
#admittidly has trouble here. didint know you could assign one, two = method(one, two)
#very usefull!

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 6. 
#True or false are the return values, and will be returned based on evaluation.
#if other returns were needed, a ternary operator would work.

def color_valid(color)
  color == "blue" || color == "green" 
end
