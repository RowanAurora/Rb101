
# def remove_non_letters(string)
#   string.tr("^A-z ", '')
# end

# def word_sizes(string) 
#   hsh = {}
#   arr = remove_non_letters(string).split.map { |word| word.size }
#   arr.uniq.sort.each do |key|
#     hsh[key] = arr.count(key) 
#   end
#   hsh
# end

# p word_sizes('Four score and seven.')
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}

def word_sizes(string) 
  hsh = {}
  arr = string.split.map { |word| word.delete('^A-z').size }
  arr.uniq.sort.each do |key|
    hsh[key] = arr.count(key) 
  end
  hsh
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}