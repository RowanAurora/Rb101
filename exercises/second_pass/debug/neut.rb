=begin
We wrote a neutralize method that removes negative words from sentences.
However, it fails to remove all of them. What exactly happens?

Iterating through the object you are mutateing can have unexpected results.
The original method will end up skipping any negatice word that is immediatly following a negative word

=end

def neutralize(sentence)
  words = sentence.split(' ')
  check = words.dup 
  words.each do |word|
    check.delete(word) if negative?(word)
  end
  # alt code :   words.reject! { |word| negative?(word) }
  check.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
