## Reading Ruby's syntactical sugar
***
Ruby is a high level language with a lot of syntactical sugar that hides most of the working mechanisms of the code to be closer to human level language

* _variable scoping_ rules to code with intention
* Where does code comes from
* _pass by reference_ vs _pass by value_

## Syntactical Sugar
Ruby doesn't require parenthesis () after method calls. This can obfuscate what the code is doing at times. Sometimes there doesn't appear to be a difference between a `method` or a `local variable`

A lot of other languages require () after a method to differentiate between `methods` and `variables` to be more clear what is happening

In ruby without parenthesis, Ruby will try to reference a `local variable` first, then if not available will search for a `method`.

It's important to understand the underlying concepts at play when coding ruby.

## Where does code come from?
***
The `core API` is what is loaded into the ruby runtime that allows you to `invoke methods`.

The core code is available to you without any extra code - they are central to the language.

_The standard library_ is not automatically loaded. To use things in the standard library you have to `require` it. 

Ruby can also use `gems`. Things like `pry` are gems. These are things outside the core language made elsewhere. There are loaded similarly to the `standard library`.

`Methods` can be made during runtime as well. `Methods` you write and define in your main code.

## Local variable Scope
***
`Variables` are available depending on where they are initialized.
* Inside a `block`, `local variables` initialized in the main scope and the block are available
* Inside `Methods`, only `variables` passed in or  initialized inside the `method` are available.
* In the main scope, variables initialized in the main scope are available, but one initialized in a `method` or a `block` are not available. 

## Pass by Reference vs Pass by Value
***
  * `Pass by reference` appears to be at play when we are using methods that mutate. `Variables` outside the method can be `MUTATED` by `method`.
  * `Pass by value` appears to be at work when we are using not `mutating methods`. `Variables` outside the `method` `scope` can not be effected by what happens inside the `method`.
  * Ruby appears to use both at different times and circumstances. 
  *  `Distructive methods` appear to use `Pass by reference`.
  * `Non mutating methods` appear to use `Pass by value`

## Variables as pointers
***
* `Variables` point to `objects`. `Objects` exist as places in memory.
* Multiple `variables` can point to the same object
* If that object is mutated, that is reflected in all the `variables` pointing to it.
* `Reassignment` points the `variable` to a different object.

`Variables` are like doors, `objects` are like rooms.
You can enter through any door and be in the same room. If you change the room, the change is consistent no matter what door you go through.

If you renovate and move the door, it will no longer be connected the previous room. You cant access the previous room from it at all. 

`Mutating` is redecorating, `Reassignment` is remodeling. 

## Common beginner problems
***
Are `Variables` objects? Yes, but also no. Everything is an object, its objects all the way down. Variables job however is to point to other objects.
* There are no 'primitive types' in ruby. Everything is an object and methods call be called on them. 
* `Variables` either retrieve the value or update the value of an object.  

## Data structures and Collections
***
* A `data structure` is a structure that holds data
* A `collection` is a type of data structure, usually a `Hash`, `Array` or `String`
### Arrays
  * `Arrays` are 0 `indexed collection`s
  * They can contain any object
  * There can be repeats of objects
  * `.Fetch` can be used to verify object `nil` vs empty

### Hash
* `Hashes` are a `key` retrieval collection
* Most languages are unordered, but `Ruby` after 1.9 are ordered
* => `keys` and `values` are separated with a rocket operator
* `keys` and `values` can be any object
* `Keys` are most often `:symbols`, but not always
* `Keys` must be unique in the `hash`
* `Values` can be repeated
* `.Fetch` can be used to verify `value` or `key` of `nil` vs empty `nil`

## String
  * `Strings` are `collections` of Alphanumeric characters as well as special characters
  * Ordered according to the `ascii chart`
  * `String literal` is the name for a loose `string` or the direct object of a string 
  
  ## Iterators
***
### Each
* `.each` is a basic `iterator`, functionally equivalent to a basic `loop`-counter structure
* Always `returns caller`
* Good for `outputs`
### Map
* `.map` is the `transformation` iterator.
* It's purpose is to transform the passed `collection` `element` by `element`.
* Considered the `return value` of the `block`
* Criteria to `transform` can be added in the `block`
* `.map!` is the `destructive` version that `mutates` the `caller`
* returns same amount of elements
### Select
* `.select` is the selection iterator. 
* Selection return a collection depending on the return of the `block`.
* Checks for `Truthiness` of expression and returns the truthy elements. 
* Always returns same amount or less elements
  
## Enumerable
***
* `Module` that is mixed into `arrays` and `hashes`
* `#.map`, `#.select`, `#.sort`, `#.reject` , `#.min`, `#.max` are common `methods` made available via `enumerable module`. 