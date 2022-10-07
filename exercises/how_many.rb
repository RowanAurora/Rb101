vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

# def count_occurences(array)
#   hash = {}

#   check = array.uniq
#   count = check.map { |car| array.count(car)}
  
#   hash = Hash[check.zip(count)]
#   hash.each { |k, v| puts "#{k} => #{v}"}
# end




def count_occurrences(array)
  occurrences = {}
  array.map(&:downcase!)
  array.each.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  if occurrences.include?('suv')
  occurrences['SUV'] = occurrences.delete('suv')
  end    
  
  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)