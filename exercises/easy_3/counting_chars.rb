puts "Please enter one or more words:"
words = gets.chomp

number_of_words = words.tr(" ", "").length

puts "There are #{number_of_words} characters in \"#{words}.\"'"