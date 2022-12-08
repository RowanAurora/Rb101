ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def find_missing_letter(arr)
  full_snip = ALPHABET[ALPHABET.index(arr.first)..ALPHABET.index(arr.last)]
  result = full_snip.reject {|char| arr.include?(char)}
  result[0]
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"