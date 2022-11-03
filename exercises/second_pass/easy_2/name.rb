# Problem:
# write a program that will ask for a users name.  The program will then greet the user.
# if the user writes name! the computer yells back
# rules
# - If user inputs string with no !, greet user in capitalize case
# - If user input includes ! , respond in UPCASE

# algorithm:
# - display messege asking for name
# - check input for !
# - if input has no, puts string 1 with name
# - if input has !, puts string 2 with name

# code:

name = nil
loop do
  puts "What is your name?"
  name = gets.chomp 
  break if name.class == String 
  "puts error input"
end



if name.include?("!")
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING!"
else 
  puts "Hi #{name.capitalize}. Nice to meet you. :)"
end