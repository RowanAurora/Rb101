



def next_big(num)
  arr = []
  num.to_s.chars.permutation(num.to_s.size) { |perm| arr << perm }
  arr.map!(&:join)
  arr.map!(&:to_i).sort!
  index = arr.find_index(num) 
  arr[index + 1] 
 end


p next_big(2017) == 2071
p next_big(123456789) == 123456798
p next_big(513) == 531
