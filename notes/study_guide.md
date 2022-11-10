# Assessment 109 Topics

## Local Variable Scope
***
- `Local variable` `scope` is the concept governing which `variables` are accessible in different contexts.
- `Local variables` initialized in the main `scope` are accessible in the main `scope` and inside `blocks` in the main `scope` 
- `Local variables` initialized in the main scope are not available within `methods`. `Variables` can be passed to those `methods` during `method invocation`, and they are `assigned` to `parameters`. 
- `Non mutating` calls within the `method` do not effect the outside `variable`.
- `Methods` can `MUTATE` `variables` in the `main scope` if they have been passed as `arguments`.
- `Variables` initialized within a `block` are not accessible within the `main scope`
- `Variables` initialized in the `main scope` are available and can be effected within the `block`
***
##### `Variables` in the `main scope` cannot be effected by `non mutating methods`. Changes within the `method` are not reflected in the `main scope` `variable`
```ruby
def a_method(param)
  param += "world"
end

some_variable = 'hello'

a_method(some_variable)
p some_variable # ===> 'hello'
```
***
##### `Mutating methods` can effect `variables` passed to them.
```ruby
def a_method(param)
  param << " world"
end

some_variable = 'hello'

a_method(some_variable)
p some_variable # ===> 'hello world'
```
***
##### `Variables` initialized in the `main scope` CAN be effected within `blocks` (_a `block` is do..end or {} after a `method invocation`_)

```ruby
some_variable = 'hello'

loop do
  some_variable += ' world'
  break
end

p some_variable # ===> 'hello world'
```
***
##### `Variables` initialized inside blocks are not available in the `outer scope`
```ruby
loop do
  some_variable = 'hello world'
end

p some_variable #===> name error
```

## Mutating and Non-mutating Methods 
***
- `Mutating methods` can mutate the caller or the argument
- `Non-mutating` `methods` can't make any changes to the caller or argument. 
- For ruby core `methods` that have both `mutating` and `non mutating` versions, the mutating one has a '!' (ie #.uniq , #.uniq!)
- `Non-Mutating` `methods` appear to be using `pass by value`
- `Mutating` `methods` appear to be using `pass by refrence`

### Pass by Value

In programing languages `Pass by value` is a strict evaluation strategy where only copies are  passed to `methods`, and thus can't be effected by anything within the `method.`

Or, the value of an object is passed.

### Pass by Reference

In `Pass by reference` on the other hand a `reference `to the `object` is passed to the method, meaning both the main scope variable and the local variable in the method point to the same object in memory.

Or, a reference to the object is passed.

## Working with collections
***
Collections are data structures that hold a COLLECTION of elements. The most common are `Arrays`, `Hashes` and `Strings`.

### Arrays
`Arrays` are _0 indexed_ collections that can contain any object(even other collections). Many objects can have the same value.

- `Arrays` can do _indexed assignment_ `array[0] = 'bing'`
- Referencing specific elements looks similar `array[1] #===> 'hello'`

### Hashes

`Hashes` are key-retrieval collections consisting of `key-value pairs`. They are generally unordered but in ruby, after 1.9 they maintain order.

- `Keys` must be unique in a `hash`
- `Values` can occur multiple times
- Retrieval looks like => `hash[:key] #==> value`
- Re-assignment or initializing a new `key` can look similar
- Initializing `hash[:key2] = 'hello'`
- reassignment `hash[:key2] = 'world'`
- Both `keys` and `values` can be any objects(even other collections), but keys are most often symbols => `:symbol`
- key value pairs are separated with a rocket hash `=>`
- Symbols can use a different syntax `symbol:`
- `.keys` and `.values` can be used to return an array of either. `.keys` is especially useful for iterating.

### Strings

`Strings` are also _0 indexed_ collections, but they contain characters and have restrictions on the elements they can contain. Alphanumeric and punctuation characters as well as number characters.

- `Strings` look like `'some characters'` or `"Some more characters"`
- Specific characters can be returned using the index (`.slice` method) `some_string = 'hello'  some_string[0] ==> h`

## Essential Collection Methods
***

Some of the basic `collection methods` that are essential to know are:

- `.each`
- `.map`
- `.select`

### Each
`#.each` is the basic iterator method. It is functionally equivalent to a loop-counter expression. Iterating through and outputting are its main uses.

- Always returns the caller
- Does not consider the `return value` of the `block`

### MAP
`#.map` is the transformation method (made available via the enumerable module). Its purpose it to iterate though a collection and transform the elements according to the block. 

- The `return value` of the `block` is considered and returned.
- Transforms elements of a collection and returns a new collection.
- `#.map!` is the destructive version that changes the caller. 

### Select

`#.select` Is the selection iterator. It evaluates the truthiness of its `block` and returns elements that evaluate `truthy`. 

- The `return` value of the `block` is considered and a new collection returned with the elements that evaluate `truthy`.
- The `block` can be given criteria to evaluate the elements.

## Truthyness
***

In ruby, everything except for `false` and `nil` are `truthy`. 
- `False` and `Nil` are the only `falsy` elements
- `True` and `False` are booleans 
  - `True` is `truthy`, but not all `truthy` elements are true
  - `False` is `falsey` but nil is `falsey`, but not `false`.

```ruby
variable = 'hello'

if variable
  puts 'true'
else
  puts 'false'
end

 #===> 'true'
```
```ruby
variable = false

if variable
  puts 'true'
else
  puts 'false'
end

 # ===> 'false'
```

## Variables as pointers
*** 
`Variables` in ruby act as pointers to a space in memory, an object. Each object has a unique id but multiple `variables` can point to a single memory space.
```ruby 
a = "hello"
b = a
p b #=> 'hello'
```

If that `object` itself is mutated, that is reflected by all the `variables` that point to it.
```ruby 
a = "hello"
b = a
b << ' world'
p a #=> 'hello world'
p b #=> 'hello world'
```



If a `variable` is `reassigned`, the `variable` now points to a different place in memory and will have different `object id`. 

```ruby 
a = "hello"
b = a
a = "wow"
p b #=> 'hello'
p a #=> 'wow'
```

This can become confusing with collection objects. The collection has an `object id`, and each element also has its own `object id`. Changing an element wont necessarily change the collections Id.

Here, `arr` remains pointed at the same space, even when one of its elements is reassigned. 

```ruby
arr = ['a', 'b']
 => ["a", "b"] 

arr.object_id
 => 70281347659200 

arr[0].object_id
 => 70281347659240 

arr[0] = 'c'
 => "c" 

 arr.object_id
 => 70281347659200 

arr[0].object_id
 => 70281314190720 

```
   
## puts vs. return
***
An important consideration when coding or examining code is the difference between output and return.

Output, in the case of `puts` will print the argument passed to it, but will return nil.

`p` however calls `.inspect` on the argument, printing a human readable string of the object and returns the argument it was given.

Using `return` in an if conditional will force it to return the value placed after return.

## Method Definition and Method Invocation
***

`Method definition` is where a `method` is defined. The code between `def..end` is the `method`.
```ruby
# start
def method(param)
  param
end
 #end
 ```
 `Method invocation` is when a method is used within the code. 
 ```ruby
def method(param)
  param
end

method(argument) # <== this is a method invocation
 ```

### Implicit return value of method invocations and blocks
***
A block is defined as the code in do..end or {} following a method invocation. 
the block starts where `do` or `{` are, and ends where `end` or `}` is .

```ruby
method(argument) do |param|
  block blocky block
end

method(argument) { |param| blocky block }
```
The implicit return is the return value of an expression that we don't directly see from a method invocation.

The implicit return here is 7
```ruby
def num
 num = 7
end
```

With a block, the implicit return value is what the block evaluates and returns to the method. 

The implicit return here would be nil for the block. Each doesn't use the return value of the block however.
``` ruby
[1, 2, 3].each do |num|
  puts num
end
```

## How the Array#sort method works
***

The `Array#sort` method compares compatible objects using the spaceship operator (`<=>`) and orders elements in the `array` based on the return of `<=>`. `Integers` and `floats` are ordered numerically, while `strings` and `symbols` are ordered according to the ascii table.

`.sort` returns a new `array` created by sorting self. A code `block` is optional and can determine how the elements are sorted.
```ruby
arr = ['a', 'c', 'b']
arr.sort
# => ['a', 'b', 'c']
arr.sort { |a, b| b <=> a }
# => ['c', 'b', 'a'] 
```
The `<=> method` compares elements returning an `integer ( -1, 0, 1)` depending if element on the left is less than equal to or greater than the element on the right.

## Variable shadowing
***

`Variable` shadowing can occur when a block parameter shares the same name as a local variable.
The parameter takes precedence in the block, but the local variable is not overwritten in the larger scope.

```ruby
var = "hello" 
arr = ["world"]

arr.map! { |var| var = "big" }

p var # => 'hello'
p arr # => 'big'
```
  