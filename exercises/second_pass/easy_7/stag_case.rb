#problem: Refactor the method to ignore non alphabetic characters



def staggered_case(words)
  switch = true
  result = words.chars.map do |char|
    if [*"A".."Z", *"a".."z"].include?(char)
      if switch == true
        switch = false
        char.upcase
      elsif switch == false
        switch = true
        char.downcase
      end
    else
      char
    end
  end.join
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'