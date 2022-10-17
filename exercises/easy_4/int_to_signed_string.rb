INT_STRING = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(int)
  string = ''
  int.digits.map do |digit|
    string.prepend(INT_STRING[digit]) 
  end
string
end

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then "-#{integer_to_string(-integer)}"
  when +1 then "+#{integer_to_string(integer)}"
  else         integer_to_string(integer)
  end
end



p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == "-123"
p signed_integer_to_string(0) == '0'