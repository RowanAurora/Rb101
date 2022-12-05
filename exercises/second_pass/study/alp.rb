def alphabet_position(string)
  str = string.downcase.chars
  str = str.select { |char| ('a'..'z').to_a.include?(char)}
  arr = ("a"..'z').to_a.unshift(' ')
  str.map do |char|
    arr.index(char)
  end.join(" ").to_s
end

p alphabet_position('wowowowosfa')
p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"