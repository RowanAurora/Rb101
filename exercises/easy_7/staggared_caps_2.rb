def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper && ('A'..'z').include?(char)
      result += char.upcase
      need_upper = !need_upper
    elsif ('A'..'z').include?(char)
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') 
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'