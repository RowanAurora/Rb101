=begin
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

problem: Write a madlibs game that gathers user input for a noun, a verb an adverb and an adjective and adds them into a story

algorithm :
Prompt for user input for noun
record in variable
Prompt for user input for verb
record in variable
Prompt for user input for adverb
record in variable
Prompt for user input for adjective
record
Creat a bank of strings to add and sample from

Interpolate each of into a story
=end

def prompt(string) 
  puts "=> Enter a" + string
end

prompt " Noun:"
noun = gets.chomp
prompt " Verb:"
verb = gets.chomp
prompt "n Adverb:"
adverb = gets.chomp
prompt "n Adjective"
adjective = gets.chomp

bank1 = [". That's wild!", "! That's funny dude", "! AHAHAHHA", ". Lmao", ". Crazy.", ". unHINGED"]
bank2 = ["Do you ", "I can't believe you ", "It beggers belief that you ", "A little bird told me you "] 
bank3 = [" your ", ' my ', ' his ', ' her ', ' thier ']
puts bank2.sample + verb + bank3.sample + adjective + " " + noun + " " + adverb + bank1.sample

