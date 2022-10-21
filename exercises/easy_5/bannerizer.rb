# problem: write a method that takes a string and prints it inside a box
# rules
# - line of box is 4 characters longer than the string
# - 2 lines above and below box are the top and bottom
# - second and 4th line have | seperated by characer lenght + 2



# example/test
# my mind goes the the format method for this exercise
# but also think .times can do this as well with string interpolation

# puts "+" + "#{"-" * 5}" + "+"
# puts "|" + "#{" " * 5}" + '|'


#   data structures
# -primarily strings but some integers for formatting
LINE_MAX = 76 
def string_break(string)
  string_arr = []
  counter = 0

  while string_arr.join.size < string.size
  string_arr << string[counter, LINE_MAX]
  counter += LINE_MAX
  end

remainer = string_arr.last.size
string_arr.last << (" " * (LINE_MAX - remainer)) unless string_arr.size == 1
string_arr
end

def print_in_box(string)
  (string.size < LINE_MAX) ? size = string.size + 2 : size = LINE_MAX + 2
  arr = string_break(string)

  puts "+" + "#{"-" * size}" + "+"
  puts "|" + "#{" " * size}" + '|'
  arr.each {| part| puts "| " + "#{part}" + " |" }
  puts "|" + "#{" " * size}" + '|'
  puts "+" + "#{"-" * size}" + "+"
end

print_in_box('To boldly go where no one has gone before.')