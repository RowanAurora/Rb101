=begin 

You have a bank of switches before you, numbered from 1 to n. 
Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. You go back to the beginning,
 and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, 
 you go back again to the beginning and toggle switches 3, 6, 9, and so on.
  You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, 
and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

Problem: 
Write a method that takes one argument that is a number of switches. 


test cases: 
lights(10) == [1, 4, 9]
lights(5) == [1, 4]

Algorithm:
define a hash_maker method that:
Generate a hash that has a default value of :on and keys of 1 - argument
define a light method that :
create a loop, that modifies the hash based on the round.
 - multiples of the round are flipped 
 break at end of round that matches input number
return which lights are one
=end 

def hash_maker(num)
  hash = Hash.new
  (1..num).to_a.each { |number| hash[number] = :on }
  hash
end

def flipper(num)
  hash = hash_maker(num)
  (2..num).each do |num1|
    hash.keys.each do |key|
      if key % num1 == 0 
        if hash[key] == :on
          hash[key] = :off
        else 
          hash[key] = :on
        end
      end
    end
  end
  hash
end

def lights(num)
  hash = flipper(num)
  result = []
  hash.each do |key, value|
    if value == :on 
      result << key
    end
  end
  result
end

     



p lights(3)
p lights(10) == [1, 4, 9]
p lights(5) == [1, 4]
p lights(100) 