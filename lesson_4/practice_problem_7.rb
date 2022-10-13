statement = "The Flintstones Rock"

letter_count = {}
letter_nums = []
counter = 0
letters = statement.tr(" ", "").chars.uniq.sort

loop do
  break if counter == letters.size
  letter_nums << statement.count(letters[counter]) 
  counter += 1
end
letter_count = letters.zip(letter_nums).to_h
p letter_count

# result = {}
# letters = statement.tr(" ", "").chars.uniq.sort

# letters.each do |letter|
#   letter_frequency = statement.count(letter)
#   result[letter] = letter_frequency if letter_frequency > 0
# end

# p result