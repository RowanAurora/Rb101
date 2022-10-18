nested data structures

collectiosn often contain other collections.

arr = [[1, 3], [2]]
  each inner element has its own index, aswell as being marked by the outer array index
arr[0] # => [1, 3]
arr[0][1] # => 3

to call using []= call chaining the methods

updating collection element
use arr[0][0] = x to update in nested array
  - this is a destructive action

adding element to collection
arr = [[1], [2]]

arr[0] << 3
arr # => [[1, 3], [2]]
or an array
arr[0] << [3] # =. [[1, [3]], [2]]

Other nested structures

hashes can be nested in arrays
  [{ a: 'ant' }, { b: 'bear' }]
add k/v pair to inner hashes
  -reference the first element in nested array
  -then, update the hashes
  arr[0][:c] = 'cat'
arr # => [{ :a => "ant", :c => "cat" }, { :b => "bear" }]
  - this is also a destructive change

Nested data structures can also include more than one type of collection
arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

arr[0]              # => ["a", ["b"]]
arr[0][1][0]        # => "b"
arr[1]              # => { :b => "bear", :c => "cat" }
arr[1][:b]          # => "bear"
arr[1][:b][0]       # => "b"
arr[2][2]           # => "b"

confusing aspect can be when variables are referencing inner collections directly
a = [1, 3]
b = [2]
arr = [a, b]
arr # => [[1, 3], [2]]
 - if a is modified, it modifies inside the array aswell. they both reference the same object
  - same as if you modify a in the array directly

  Shallow copy
  -copy whole coolection before major modifications
  .dup and .clone create a shallow copy of an object
  -only the object the method is called on is copied, inner objects are shared, not copied
  - if you mutate an inner object, both the orginal collection and copy will have that oject mutated
  
  if a destructive method is called on the copy, it will modify the copy but 
  if a destructive method is called on the inner objects, both will change
  is .map! vs .each {|X| X.upcase!}

  - its important to know what level tou are working on

  .clone freezes the orginal object, preventing destructive mods
  .frozen? can confirm if object is frozen
  .freeze can freeze objects
  will only freeze object, not nested objects