=begin
P - Understand the Problem
Problem: WRite a method that prints a line of text within a box


Implicit rules:
box is sized 4 characters biiger than string
box is 5 lines

Explicit rules:

Input:string

Output:bannerized string


E - Examples Test cases
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Print '+' followed by (two more '-' than the size of the string), followed by '+'
print | followd by spaces that account for 2 more chacters than the string, followed by |
print "| " followed by the string, followed by " |"
print | followd by spaces that account for 2 more chacters than the string, followed by |
Print '+' followed by (two more '-' than the size of the string), followed by '+'
C - Code (with intent)
=end

def print_in_box(string)
  size = string.size
  puts "+-" + "#{'-' * size}" + "-+"
  puts "| " + "#{' ' * size}" + " |"
  puts "| " + string + " |"
  puts "| " + "#{' ' * size}" + " |"
  puts "+-" + "#{'-' * size}" + "-+"
end

print_in_box('To boldly go where no one has gone before.')