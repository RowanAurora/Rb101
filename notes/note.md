Rowan
1.
```ruby
arr1 =  ["a",  "b",  "c"] 
arr2 = arr1.dup 
arr2[1].upcase!

p arr2
p arr1
```

What is the output for arr2? What if arr1 was a string and not an array?
What concept is at work here?

The Return value of arr2 would be ['a', 'B', 'c']. arr1 and arr2 point to the same array object, and one of the elements of the object is being mutated with the method call .upcase! on the return from the .slice call ([]).
If it was a string however, the return of string#.slice would be upcased but it wouldint be in the variable. 
Variables as pointers, working with collections and mutating methods are the concepts at work.


2.
```ruby
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num
  end
end
```

What does the return look like? How would you change the code to sort numerically?
The return is [['1', '8' '11'], ['1', '8' '9'], ['2', '12', '15'], ['2', '6', '13']].
The reason is the array is sorted according to the content of each element in the sub-array, and each element there is a string. They array gets sorted according to the ASCII table, and not numeric value because of this. For a more expected output, you can call .to_i on the num parameter. 

3.
```ruby
a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a
```

What are the final values of a and b? What core concept is at work here?
The final values of a and b are a = 2 and b = [3, 8]. Arr = [4, [3, 8]].
The concepts at work here are index assignment, mutating methods and working with collections.
The local variable a isnt modified here, but arr[0] += 2 is a reassignment operand. The object at[0] off arr is reassigned to arr[0] + 2, which is 4. reassignment is non mutating, and numbers are immutable objects regardless.

4.
```ruby
def  word_cap(string, num)

string.split.map { |word| word.capitalize }.join(" ")

end

  

p  word_cap('four score and seven') == 'Four Score And Seven'
```

22
Traceback (most recent call last):
        1: from extra.rb:5:in `<main>'
extra.rb:1:in `word_cap': wrong number of arguments (given 1, expected 2) (ArgumentError)

The given code throws the above error. What would you change to make the code work?

The above code throws the above error, argument error because the method definition requires two arguments and in the method call, only one is provided. The extra parameter in the method definition(num) is not used, and can be removed. 

5.
```ruby 
def  mess_with_it(some_number) 
answer =  42  
some_number +=  8  
end 

new_answer =  mess_with_it(answer) 

p answer 

```
What is output by the code? What concept is demonstrated?
The above code throws an error for undefined local variable or method 'answer'.  Inside the method definition, answer is instantiated, but because of that it only exists within the scope of the mess_with_it method. When the p method is called with answer as an argument, this creates an error because it doesnt exist in the main scope.
Variable scoping is the main concept at work here.

----------------------
Brandi
Question 1:
What does the following code return? Is the output what we expected? If not, how could we change the code to get the expected output? What concept does this demonstrate?
```ruby
books = [
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:title]
end

puts books
```
The code returns nil following the puts methods with always returns nil. The return value of the code on line 99 to line 101 is the hash sorted alphabetically according to the value of the :title key, which here is a string. To get the code output to be as expected, we need to reassigned books to the return value of line 99 - 101.
This is an example of nonmutating methods and working with collections, aswell as knowing the returns vs output of code.

books = books.sort_by do |book|
  book[:title]
end

Question 2:
Explain the following code. What is the output? What concept does this demonstrate?
```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop
end

puts numbers
```
The code outputs 1 2  1 2  each on seperate lines. Each time an element from numbers is passed to the code block (defined by the do..end after the method call) the trailing element of the numbers array is deleted and returned, but nothing is done with this return value. So in the block, the p method is called on 1, then .pop is called on the object we are iterating through, removing 4. Then the p method is called on 2, followed by the .pop method being called again deleteing the trailing element (3). Because we are mutating the object we are iterating on, 2 is now the end of the array.
the puts method is then called on the local variable numbers which outputs the array[1, 2].

Question 3:
What does this code output? Why? What concept does this demonstrate?
```ruby
arr1 = [1, 2, 3].select { |num| p num }

arr2 = [1, 2, 3].select { |num| puts num }

p arr1
p arr2
```
The a code outputs 1 2 3 as each element is passed to the block on line 129, and because `p` does not return nil, each element evaluates as truthy and all elements are returned and assigned to the `arr1` local variable. 
the code then outputs `1 2 3` again as each parameter is passed through the block on line 131. the puts method is called on each parameter, outputing the caller and returning `nil`. Because `nil` evaluates as falsey `.select` doesnt use it. the return value of the block is `[nil, nil, nil]`  and the `.select` method on line 131 returns `[]` and that is assigned to the local variable `arr2`
the p method is then called on `arr1` outputting `[1, 2, 3]`. after the `p` method is called on `arr2`, outputting `[]`. This demonstates the importance of understanding the basic iteration methods and knowing the return value of code.


Question 4:
Why don't we get an error here? What concept does this demonstrate?
```ruby
if false
  greeting = "hello world"
end

p greeting
```
We dont get an error with the code because all variables are in scope, there is not syntax error and nothing is wrong with the code. If we changed the `false` on line 144 to true, the code would then output 'hello world'. This is an example of conditional if and truthyness

Question 5:
Explain the following code. What could we change to include 'jim' in our list? What concept does this demonstrate?

```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect
```
The code defines add_name method on line 156 to accept two arguments.
The next line reassigned on of the passed arugments to itself + the other argument and ends on the next line.
The local variable names is then assigned to the array ['bob','kim]. on line 161, we have a method invocation of add_name with the local variable names passed as the first argument and the string literal 'jim' passed as the second. This returns ['bob, 'kim', 'jim'] but nothing is done with the return value. On line 161 the .inspect method is called on the local variable names, and then the puts method is called on the return value of that. This outputs ['bob', 'kim'].
To include 'jim' in the array object names, we could reassigned names to the return value of the code on line 161, or make the method add_names mutating.
This is a demonstation of variable scoping and return vs output, aswell as mutating vs non mutating methods.
------------------------------
James
# problem 1
# What does the following code output?  Why?
```ruby
arr1 = ["bob", "sue", "jim"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

p arr1
p arr2

```
The output of the code is ["bob", "sue", "jim"], then on the next line ["BOB", "SUE", "JIM"]. On a surface level it seems they both should output the latter, but assigning local variable arr2 to arr1.dup means arr2 has a different object id, and mutations to the object wont effect the other object.
This is a an example variables as pointers and knowing what the return value of a method is.

# problem 2
# What does the following code output?
# Is there another way we could make the same output appear?
```ruby
a = [1, 3]
b = [2]
arr = [a, b]
p arr 

arr[0][1] = 8

p a
p arr
```
The output of the code is [1,8] and then on the next line ][1, 8], [2]]. We could have the same output by reassigning the local variable a manually (a = [1, 8]) or use an incrimenting reassignment a[1] += 5.

# problem 3
# What does the following code output?  Why?
```ruby
string = 'abcdefg'
5.times do |num| 
string[-num] = "x"  
puts num
end
p string
```
The string currently outputs nothingm but throws an error for undefined local variable  for 'str' because str wasnt assigned a value at any point, it doesn't exist as an object and cant be used. is str is replaced with the local variable string, the output would be xbcxxxx. The .times method starts by passing 0 up to the caller -1. So the block recievers numbers counting up from 0. 

# problem 4
# What does the following code output?  Why?
```ruby
def hello
  "I'm a method"
end

hello = "I'm a local variable"

p hello
```
THe code outputs "I'm a local variable". This is because when given a word, ruby first reaches for a local variable of that name, and if not found then it reaches for the method. Keeping names sensical and easy to read is important!

# problem 5
# What does the following code output?  Why?
```ruby
def new_value(array)
  array += ['baseball']
end

array = ['soccer']
new_value(array)
p array
```
The code outputs ['soccer']. This is an example for scoping for local variables and mutating vs non mutating methods.
Despite being passed to the method new_value, the local variable array in the main scope does not get changed. Unless mutated, actions inside the method wont effect the outside local variable. Reassignment (+=) is non mutating.

--------------------------------
Andrew
# 1 Describe the code, what is returned from the method separate_name?
```ruby
def separate_name(full_name)
  full_name.split(' ')
end

first_name, second_name = separate_name('John Doe')
p first_name
p second_name
```
The return from the method separate_name is an array of two objects, `['John', 'Doe']`. The first element is assigned to the local variable `first_name` and the second element to the local variable `second_name`

# 2 Is USER_NAME accessible to the methods scope? If so why?
```ruby
USER_NAME = 'Jeanie'

def welcome_user
  puts "Welcome #{USER_NAME}!"
end

p welcome_user

```
The constant USER_NAME is accesable in the welcome_user method because of the scoping rules for constants. They are accessable in blocks and methods and the main scope. The rules for constants vs variables allow for different things to be preformed with constants, and thier use can allow for easier maintenance or editing of code. 


# 3 Where is the error and why can't it be printed? Comment the error out and describe what prints
```ruby
first = "This is first!"

3.times do
  second = "This is second"
  1.times do
    third = "this is third"
    p first
  end
  p second
end
p first
 # p third
```
# NameError (undefined local variable or method `third' for main:Object)
The code outputs "This is first" on one line and "this is second' on the next, and does this three times. The error was about scoping rules and that local variables instantiated inside of a block (defined by the do..end or {} after a method call) are not available outside of the block.


# 4 Describe what is printed for each of the three puts and why they are different
```ruby
arr = [0, 1, 'a', 'b', 10]
puts arr[2..-1]
puts arr[2...-1]
puts arr[-2]
```
The code prints out, each on thier own line a b 10 a b b. 
The difference between the first two is the difference of one '.' two describes the range object inclusive of the two ojects surrounding it, and three is for a range object exlusive of the objects defining it. (here the objects defining the range objecty are 2 and -1)
The final puts method call prints out the return value from the .slice method call on local variable array arr.
# 5 Describe the code. Does this work without the #to_s method and what is capitalized names with out it?
```ruby
family = {
  john: 'Fater',
  jane: 'Mother',
  lyle: 'Son',
  lily: 'Daughter'
}

capitalized_names = family.keys.map do |name|
  name.capitalize
end
p capitalized_names
```
On line 301 the loca variable family is assigned to a hash object with key value pairs of symbols and strings.

on line 308 the local variable capitalized names is assigned to the return value of family.keys.map. Inside the block on line 309, the capitalize mathod is called on each element passed to it and returned. 
on line 311, the array capitalized_names is printed.
This words with or without the to_s call on 309 because both strings and symbols have the .capitalize method and case sesnsitivity.