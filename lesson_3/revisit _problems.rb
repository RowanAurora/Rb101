# revisit problem

=begin Question 1 medium 1

Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

Copy Code
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock! \
=end



=begin 
Question 5 medium 2

Depending on a method to modify its arguments can be tricky:

Copy Code
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
Whether the above "coincidentally" does what we think we wanted depends upon what is going on inside the method.

How can we change this code to make the result easier to predict and easier for the next programmer to maintain?
 That is, the resulting method should not mutate either argument, but my_string should be set to 'pumpkinsrutabaga'
  and my_array should be set to ['pumpkins', 'rutabaga']
=end


=begin Question 6 medium 2

How could the following method be simplified without changing its return value?

Copy Code
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end 
=end  

=begin 4. hard_2
Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11". He is not familiar with regular expressions. Alyssa supplied Ben with a method called is_an_ip_number? that determines if a string is a numeric string between 0 and 255 as required for IP numbers and asked Ben to use it.

Copy Code
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end
Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, and you're not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code. 
=end

