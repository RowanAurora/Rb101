def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# line 1
# -.split method is called on string
# - a new array is returned and passed to each
# line 1
# - .each is called on the array from .split
# - each element of the array is passed to the block
# - returns the same array
# line 2
# .reverse! is called on each element of the array
# .this destructively changes each element of the array
# .each element is returned
# the return is not used
# line 3 
# - .join is call on the return of the each method
# - the return is the same array object, but mutated
# this is the return value of the method
