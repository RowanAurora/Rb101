# problem : take year input and output century with proper suffix "th" "st" "rd" "nd"
# rules:
# -new centuries begin in 01 years. 
# -century number must pair with correct suffix
# - any date range (1, 2004, 11230)

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + suffix(century)
end

def suffix(century)
return 'th' if [11, 12, 13].include?(century % 100)
last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


puts century(2000) 
p century(2001) 
p century(1965)
p century(256) 
p century(5) 
p century(10103) 
p century(1052) 
p century(1127) 
p century(11201) 