def xor?(arg_1, arg_2)
  if arg_1 == true && arg_2 == false
    return true
  elsif arg_1 == false && arg_2 == true
    return true
  else 
    return false
  end
end

p xor?(5.even?, 4.even?) 
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 