# What is the output of this code? Why?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
The output of the code, is `34`. On line 1, the local variable answer is assigned to the integer 42. The local variable answer is passes as an argument to the method invocation `mess_with_it` on line 8. As we can see in the method definition for mess_with_it, its is a non mutating method. Its important to not that reassignment (in this case `some_number += 8`) is non mutating, and even though a reference to `answer` is passed to the method, the local variable within the method that was pointing to the same object is now pointing at a different space in memory. The return value of the method ivocation `mess_with_it` is captured on line 8 by the assigning it the local variable `new_answer`, but that variable is not used any further. When we pass the local variable `answer` to the `p` method on line 10, we get the output of `34`

34

The code outputs an integer, 34. On line 2, `answer` is assigned the integer value of 42.
The method invocation on line 8 `mess_with_it` is passed answer as an argument and the local variable
`new_answer` is assigned the return value. This is not used at all in the output. On line 10,
the p method is called on the local variable `answer` - 8 and the value of `answer` - 8 is output. 
The confusion could arise from the reassignment within the method on line 5, but this has no affect outside
the method.
**or**
- argument is passed to p, not called on argument
- use object referenced by , return of
- -be explicit about expressions and equations.

=begin
Why doesn't the code output `["soccer", "baseball"]`? What governing principal is responsible?
=end

def new_value(array)
  array += ['baseball']
end

array = ['soccer']
new_value(array)
p array

The code outputs ['soccer'] instead of ['soccer', 'baseball'] because the local variable array is not reassigned or mutated
The local variable array is passed to the method `new_value` on line 10, but inside the method a reassignment takes place. This does not affect the local variable array in the main scope, as it is a non mutating method. 
The governing principal here is mutating vs non mutating methods. 

### Question 14:
### Explain the Hash#any? method and what it's doing in this code.

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end

The Hash#any? method invoked on line 4 passes the elements of the caller to the block
(defined by the do..end after the method invocation). The code `value.size > 4` inside
the block is the criteria that any? is checking for. The #any? method uses the return value of the 
block and returns a boolean `false`. The code on line 5 never evaluates as true because none of the values 
are more than 4 characters.
The governing principal here is implicit return value, as well as truthyness.

The `Hash#any?` method is a method that is called upon a hash object and passed a block. The `any?` method cares about the truthiness of the return value of the block on each execution. For each key, value pair of the hash, the block passed to `#any?` is executed with two parameters in the block representing the key and the value respectively.

If any execution of the block returns a truthy value, the return value of `Hash#any?` will be the boolean `true`. If every iteration of the block returns a falsey value, `#any?` will return the boolean `false`.

In this code, the block is returning a truthy value only if the length of the string values are longer than 4. Since the longest value is the string `'bear'`, at 4 characters, every execution of the block returns `false`, a falsey value, and `#any?` returns `false`. 

This code demonstrates truthiness with regards to methods that work with collections. 