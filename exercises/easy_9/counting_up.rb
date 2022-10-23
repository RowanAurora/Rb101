def sequence(number)
  arr = []
  counter = 1
  while counter < number + 1
    arr << counter
    counter += 1
  end
  arr
end
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) 
p sequence(1) == [1]

def sequence(number)
  (1..number).to_a
end