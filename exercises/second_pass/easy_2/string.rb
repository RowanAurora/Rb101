name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

BOB, BOB

The variable name is assigned to the string 'Bob'
The variable save_name is assigned to the same object as name

The object 'Bob' is mutated

becuase both name and save name point to the same object, when priting they are both 
the mutated object.