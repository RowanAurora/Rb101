problem : write a method that returns are string of 8, 4,4,4,12 characters seperated by
a '-' with no parameters

def uuid
  source = *('a'..'b') + ('1'..'9')
  arr = []
  
  set = [8, 4, 4, 4, 12]
  set.each do |num|
    string = ''
    loop do
      break if num == 0
      string.prepend(source.sample)
      num -= 1
    end
    arr << string
  end
arr.join("-")
end

p uuid