def center_of(string)
num = string.size / 2 
(string.size.even?) ? (result = string[num - 1, 2]) : (result = string[num])
end

p center_of('I love ruby') 
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'