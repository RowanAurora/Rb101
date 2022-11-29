=begin
# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

P - Understand the Problem
Problem: Write a method named to_weird_case that accepts 1 string and returns the same requence of characeters with every 2nd
character in every 3rd word converted to uppercase. other characters shoudl remain the same

Implicit rules:
- words are chacters seperated by spaces
Explicit rules:
capitalize every end character in every third word
Input:string

Output:string with case mods


E - Examples Test cases
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
  
  D - Data Structure
  
  A - Algorithm (Fully fleshed out logic of code chunk)
Split sentence into array of words

    
    
    C - Code (with intent)
=end
 
def capital(word)
  counter = 0
  word = word.chars.map do |char|
    if (counter + 1) % 2 == 0
      counter += 1
      char.capitalize
    else  
      counter += 1
      char
    end
  end
  word.join 
end


def to_weird_case(sent)
  words = sent.split(' ')
  counter = 0
  words.map! do |word|
    if (counter + 1) % 3 == 0
      counter += 1
      capital(word)
    else
      counter += 1 
      word
    end
  end
  words.join(" ")
end






p to_weird_case('Lorem Ipsum is simply dummy text of the printing') #==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'