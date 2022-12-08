=begin
find the longest lenght of a substring between two identical characters 
problem: write a method to find the longest substring between 2 identical characters and return the lenght not including the twins
INPUT: string

OUTPUT: integer representing the length

algorithm:
Break string into each consective upstring 
if the first and last characters are the same,and longer than 2 characters select
  return the size of the longest - 2
=end
def twins(string)
  arr = (0...string.size).flat_map do |start|
    (3..string.size - start).map do |ender|
      string[start, ender]
    end
  end.uniq
  arr = arr.select { |sub_string| sub_string[0] == sub_string[-1]}
  arr.map { |sub_string| sub_string.size - 2}.max
end


p twins("ahfoinjdfsjha") == 11
p twins('afla') == 2
p twins('sadfjkjlabb') == 6