=begin
P - Understand the Problem
Problem: given a method named `spin_me` that takes a string as an argument
        and returns the same words, but each word is reverseed in place. Given the code
```ruby
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"
```
Is the returned object the same as the passed object?

Implicit rules:

Explicit rules:

Input:

Output:


E - Examples Test cases

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)


C - Code (with intent)
=end

The returned oject would be different than the passed object. While at a glace it can
appear to be mutating the passed object, that is not the case.
On line 2, the passed string object has a method called on it that returns an array object.
returned array is then iterated through and the elements are mutates, and the return of that is joined into a string and returned. 
