# def split_word(s)
#   0.upto(s.length - 1).flat_map do |start| 
#     1.upto(s.length - start).map do |length| 
#       s[start, length]
#     end
#   end.uniq
# end

# p split_word("stack")

# def split_word(str)
#    0.upto(str.size - 1).flat_map do |start_idx|
#     1.upto(str.size - start_idx).map do |sub_size|
#         str[start_idx, sub_size]
#     end
#   end
# end
# result = []
# arr = split_word("ababababab").uniq
# arr.each do |substr|
#   num = "ababababab".size / substr.size
#   if substr * num == "ababababab"
#       result << substr
#   end
# end  
# p result[0]

# def split_word(str)
#   0.upto(str.size - 1).flat_map do |start|
#     1.upto(str.size - start).map do |length|
#       str[start, length]
#     end
#   end
# end
# str = 'string'
# p split_word(str).sort_by {|word| word.size }

def substrings(str)
  (0...str.length).flat_map do |i|
     (i...str.length).map { |j| str[i..j]}
  end
end

p substrings('stack')

def sub(str)
  (0...str.size).flat_map do |start|
    (start...str.size).map { |ender| str[start..ender]}
  end
end
p sub('stack')