# Problem:
# - Write a mad-libs program that prompts for a noun, a verb an adverb and an adjective 
#   and injects those into a story that you create

# -data structures
# - Variable strings objects from user input
# - Base string for interpolation

# algorithm
# - Prompt for input once each for noun, verb, adverb, adjective
#   -Store each in seperate variable
# - Interpolate each answer into a string
# - Print the interpolated string

def prompt(string)
  puts "==>Please enter a#{string}"
end

def input
  gets.chomp.downcase
end

prompt(" noun(person, place, thing):")
noun = input()

prompt(" verb(action word):")
verb = input()

prompt("n adjective(describes a noun):")
adjective = input()

prompt("n adverb. (modifies a verb):")
adverb = input()

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? HAHAH!!"
