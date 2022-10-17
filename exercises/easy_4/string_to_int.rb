def integer_to_string(int)
  int.digits.join.reverse
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5010) 

INT_STRING = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9' ,0 => '0'
}

def integer_to_string(int)
  string = ''
  int.digits.map do |digit|
    string.prepend(INT_STRING[digit]) 
  end
  string
end


  p integer_to_string(4321) == '4321'
  p integer_to_string(0) == '0'
  p integer_to_string(5010) 

  # Given solution
  # -array of numbers where the string character aligns with the index
  # - set empty string
  #start loop
  # - use div mod, returns number and remainder. retain both
  # - prepend the remainder using it as a argumnet to the array
  # - break if the number == o
  # - return the result.