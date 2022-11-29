=begin
one that takes a Rational number as an argument, 
and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number

 another that takes an Array of numbers in the same format, and calculates the resulting Rational number. 
 You will need to use the Rational class provided by Ruby.2/



Algorithm:
Initalize denom array to = []
start with unit_denom = 1
untill the input is 0
unit_frac = 1/unit_denim
if unit_frac is less than input 
  subtract unit_frac from input
add unit_denom to denom
outside of conditioanl
add 1 to unit denomiator

return denom

=end
 





def egyptian(arg)
  denom = []
  unit_denom = 1
  until arg == 0 
    unit_frac = Rational(1, unit_denom)
    if unit_frac <= arg
      arg -= unit_frac
      denom << unit_denom
    end
    
    unit_denom += 1
    end
  denom 
end


def unegyptian(array)
  arr = array.map { |num| Rational(1, num)}
  arr.reduce(&:+)
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)