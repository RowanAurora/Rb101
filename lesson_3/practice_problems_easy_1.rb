# 1.
# With the code

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# i would expect the original array because uniq is not a destructive methoed
# .uniq! would print 1, 2, 3

# 2.
=begin
  1. != is the 'is not equal to' operand and can be used in comparitives and loops
  2. ! before a variable ie '!user_name' returns opposite of boolean equivelant
  3. General a ! after a method means that is a mutating or destructive method
  4. part of ternary operator expression
  5. ? after something generally means a method that is evaluating something about a variable
  6. !! before something us a boolean true 
=end

# 3.
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# 4.
=begin
The two methods have diffrent functions.
.delete(1) deletes the integer 1
.delete_at(1) deletes the item at index 1
=end

# 5.
(10...100).include?(42)

# 6.

famous_words = "seven years ago..."
"Four score and" << " " << famous_words

famous_words = "seven years ago..."
famous_words.prepend('Four score and' ' ')

famous_words = "seven years ago..."
"Four score and" + ' ' + famous_words
 
# 7.

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

# 8. 
# Given the hash below, the first solution returns an array as asked, the second a hash.
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones = flintstones.assoc('Barney')

flintstones = flintstones.select { |k, v| k == "Barney"}  #returns key value pair as hash

