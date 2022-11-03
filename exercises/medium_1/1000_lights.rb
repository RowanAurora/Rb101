# problem : create a method that takes a single argument and caluculates which
# light switches are on after each pass though, flipping each at multiple of 1, then 2 then 3 etc
# return value is arrayt of on switches

# Arguments is number of lights
# each pass flips switch at multiple of pass number
# ends when pass number is argument

# populate array with 1 to argumetn number

# hash = {}
# arr = (1..5)
# for num in arr
#   hash[num] = 'off'
# end

# p hash
# p lights(5)

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)