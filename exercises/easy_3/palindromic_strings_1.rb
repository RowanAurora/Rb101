def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

def pal(sora)
  sora == sora.reverse
end

p pal('madam')
p pal(['madam', 'wow', 'madam'])

def palindrome?(collection)
  collection.class == String ? new_collection = '' : new_collection = []
  counter = (collection.size - 1)

  while counter >= 0
    new_collection += collection[counter, 1]
    counter -= 1
  end
new_collection == collection
end

p palindrome?(['madam', 'wow', 'madam'])
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
