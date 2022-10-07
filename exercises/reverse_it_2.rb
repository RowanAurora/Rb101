def reverse_words(string)
  string = string.split
  string = string.each { |word| word.length < 5 ? word : word.reverse! }
  string.join(" ")
end

puts reverse_words('Professional')         
puts reverse_words('Walk around the block') 
puts reverse_words('Launch School')  

