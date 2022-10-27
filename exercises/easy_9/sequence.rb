# Problem: create a method that takes two arguments
# 1. A count
# 2. first number of a sequence.
# Rules
# - count argument always be 0 or more
# -starting number can be any integer
# - sequence goes up by the starting number

def sequence(count, start)
  arr = []
  seq_num = start
  count.times do |number|
    arr << seq_num
    seq_num += start
  end
  arr
end

p sequence(5, 1)
p sequence(4, -7) 
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

def sequence(count, first)
  (1..count).map { |value| value * first }
end