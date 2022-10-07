vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(array)
  hash = {}

  check = array.uniq
  count = check.map { |car| array.count(car)}
  
  hash = Hash[check.zip(count)]
  hash.each { |k, v| puts "#{k} => #{v}"}
end

# same steps, they didint initiate new variables

puts  count_occurences(vehicles)

 def count_occurences(array)
  occurences = {}

  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count| 
    puts " #{element} => #{count}"
  end
end