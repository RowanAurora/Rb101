# 1 - revisit
10.times { |num| puts (" " * num ) + "the flintstones rock!"}

#The .times operation was obvios as part of the solution. The puts (" " * num)
# operation i didnt know, as i didint know it was possible to multiply a string that way.
#the + "The flintstones rock! portion was also obvious" 

# 2. results in error, why and two possible ways to fix
puts "the value of 40 + 2 is " + (40 + 2)
# TypeError (no implicit conversion of Integer into String)
# The error is from the integers not being converted into strings before being merged

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# 3.
# Alan wrote the following method, which was intended to show all of the factors of the input number:
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# change loop so 0 or - num wont raise exception 
# number % divisor == 0 validated that the integer has a factor, and if not proceeds to next step
# the factor insures it returns the correct date

def factors(number)
  divisor = number
  factors = []
  if number <= 0
    puts "inter a positive integer"
  else
    loop do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    if divisor == 0 then break
    end
  end
end
  factors
end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end

# 4 The first option mutates the variable buffer possibly having unintended consequence
# the argument 'buffer' will  be mutated to buffer << new_element 
# the second option uses buffer solely in the scope of the method and wont cause
# unintended consequences

# 5
# the code throws a undefined variable or method for 'limit' because it does not exist
# WITHIN the scope of the method. Limit could  be constant to fix this

LIMIT = 15

def fib(first_num, second_num)
  while first_num + second_num < LIMIT
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
 # or limit could also be a passed argument to fib

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#6. The output should still be 34 because += is a non mutating reassignment so 
# the method doesint effect answer at all, only the - 8

#7. I said no originally, seemingly it shouldint effect it but it is changing the object
# family_member['age'] is the method []= being called, so it mutates the objects within the hash.
#looks like reassignment, but is mutation.

# 8. The result of the call is two rps games, and the winners doing another rps game
#follwing the ternary operators its  rock v paper = paper rock v scissors = rock paper v rock = paper
#returning paper

# 9. return value should be no

# (param = no) is put as a default argument for both methods. Foo doesn't use the argument in the method
# so always returns yes. In the bar method, the returned yes from foo overrides the default argument
# so param == 'no' evaluates to false, so we get no from the ternary operator.
