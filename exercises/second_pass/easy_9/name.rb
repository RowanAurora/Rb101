=begin
Write a method that takes a first name, a space, and a last name passed as a single String argument, 
and returns a string that contains the last name, a comma, a space, and the first name.

PROBLEM:
Write a method that takes a first name a space and last name as a single string argument and returns 
lastname, firstname
RULES:

INPUT:string

OUTPUT:string


E - Examples Test cases
swap_name('Joe Roberts') == 'Roberts, Joe'
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Take string input and split into array
reverse array
rejoin array using ", " as delimitor


C - Code (with intent)
=end

def swap_name(name)
  name.split(" ").reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
