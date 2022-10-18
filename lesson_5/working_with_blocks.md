working with blocks

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

The method is being called on the array.
The methoed is passing each element from the array to the block as arr
the block is executing on arr, putsing the first elelemt from each element of self
returns the original array according to.each

-what is the type of action being performed?(method call, block, conditional)
-what is the object that action is being performed on?
-what is the side effect of that action ?(output or destructive action)
-what is the return value of that action?
-is the return vvalue used to whatever instigated the action?

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

line 1 
-method call map
-on the outer array
-no side effect
-returns a new array [nil, nil]
-return not used but shown on lines 6
line 1-3
- block execution
-on each subarray
-no side effect
-returns nil
- return used by map for transformation
line 2
-method call first
- each sub array
- no side effect
- returns element at index 0 of subarray
-return is used by puts
lines 2
-method call puts
-element at index 0 of each subarray
-outsputs a string representing an integer
- nil return value
-return used to determine value of block

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
1
3
[1, 3]
line 1
- method call map
-on outer array
-no side effect
-returns new array [1, 3]
return value not used but show on line 6
line 2-4
-block exectuion
-each subarray
- no
- integer at index 0 of subarray
-  used by map for transformation
line 2
-method call first
-each subarray
-none
-returns element at index 0 of each sub array
-used by puts
lines 2
-method call puts
-element at index 0 of each subarray
- output string
-nil
-not used
line 3
-method call first
-each subarray
-none
- ellemtn index 0 of each subarray
-used to determine return value of block

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

line 1 
-assignment 
-full array
-none
-new value of my_arr
-not used
line 1
-each method call
- outer array
- none
-self
-yes, for assignment
line 1-7
-outer block execution
-each subarray
- none
-each subarray
-no
line 2
- each method call
-subarray
-none
-sub array in curent iteration
-yes to determine return value of outerblock
line 2-6
-innerblock exectution
-elment of subarray from that ineration
-none
-nil
-no
line 3
-comparison >
-each element in subarray
-none
-true or false
-used to determine what is passed to puts
line 3
-conditional if
-result of expresion num >5
- none
-nil
- used to determine valuie of inner block
lines 5- 
-method call puts
-each ellemnt of sub array evaluated to true
- printing
-nil
-used to determine return value of the conditional statement if the condition is met

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

line 1
- method call map
-outer array
-none
- transformed object
- no
 line 1-5
- outer block execution
- each sub array
- none
- new array
-yes by top level map
line 2
- method call map
-each subarray
-no
-new subarray for cuuretnt iteration
- yes ,to determine  outer block
-line 2-4
-inner block execution
-each subarray element
-none
-an integer
-yes by inner map for transformation
line 3
-method call (*) with 2 as argument
- each ellment of subarray
- none
-integer
-yes to determine value of inner block

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

line 1
-method call select
-array of hash
-none
- new array acoording to criteria
-no
line1-3
- block exceution
- each elent in the array 
-none
-new array 
-no
line 2
- method call all?
- hash inside main array
- no
- each element of hash
-yes to determine selection
-2-3
-block execution
-inner hash
- selection
- new hash based on criteria
-yes for select return
line 3
- methodcall slice[] 
- each value in sub hash
- no
- element at index 0 of value
- yes by comparison
line 3
-.to_s method call
-each key in sub hash
- key to string
-string represting key
-yes for comparison
-lien 3 
- comparison ==
-  return of [] and to_s
- selected
- boolean
- yes by all?

line one
map method call
outer array
no 
new array
yes, for transformation
line 2
map call
inneer arrays
no
modified inner arrays
yes by out method 
line 1-9
block execution
outer array
modified values
new array
yes by .map
line 2-8
block exectuion
inner array elements
transofrmation


do not mutate the collection you are iterating through
iteration is on basis of selection and transformation, that implies to not
mutate the collection while youre performing slection or transformation