words = "the flintstones rock"

def titlesize(words)
word_array = words.split(" ")
word_array.each do |word|
  word.capitalize!
end
word_array.join(" ")
end



def titlesize(words)
  word_array = words.split(" ")
  word_array.map { |word| word.capitalize! }.join(" ") 
end
  
  
  
def titlesize(words)
  words.split.map { |word| word.capitalize }.join(" ")
end
