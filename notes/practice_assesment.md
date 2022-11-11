## Rowan

1.
```ruby
arr1 =  ["a",  "b",  "c"] 
arr2 = arr1.dup 
arr2[1].upcase!

p arr2
p arr1
```

What is the output for `arr2`? What if `arr1` was a `string` and not an `array`?
What concept is at work here?



2.
```ruby
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num
  end
end
```

Why does the code return `[['1', '8' '11'], ['1', '8' '9'], ['2', '12', '15'], ['2', '6', '13']]`? How would you change the code to sort numerically?

3.
```ruby
a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a
```

What are the final values of `a` and `b`? What core concept is at work here?

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

The given code throws the above error, what does the error mean? What would you change to make the code work?


5.
```ruby 
def  mess_with_it(some_number) 
answer =  42  
some_number +=  8  
end 

new_answer =  mess_with_it(answer) 

p new_answer 

```
What is output by the code? What concept is demonstrated?


---
## Brandi
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



Question 2:
Explain the following code. What is the return value of the `.each` method call? What concept does this demonstrate?

```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop
end

puts numbers
```


Question 3:
What does this code output? Why? What concept does this demonstrate?
```ruby
arr1 = [1, 2, 3].select { |num| p num }

arr2 = [1, 2, 3].select { |num| puts num }

p arr1
p arr2
```


Question 4:
Why don't we get an error here? What concept does this demonstrate?

```ruby
if false
  greeting = "hello world"
end

p greeting
```

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

---
## James

problem 1

Why is the output of `p arr1` and `p arr2` not the same? How do we edit one line of code to make them output the same value?

```ruby
arr1 = ["bob", "sue", "jim"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

p arr1
p arr2

```

problem 2

What does the following code output, and what concept is at work here? 

```ruby
a = [1, 3]
b = [2]
arr = [a, b]
p arr 

arr[0][1] = 8

p a
p arr
```

 problem 3

The code outputs `'xbcxxxx'`, why does it output this and not `'abxxxxx'`. Can you edit the code to output `'abxxxxx'`
```ruby
string = 'abcdefg'
5.times do |num| 
string[-num] = "x"  
puts num
end
p string
```

problem 4

The following code outputs `"I'm a local variable"`. What ruby concept is at play?

```ruby
def hello
  "I'm a method"
end

hello = "I'm a local variable"

p hello
```

problem 5

Why doesn't the code output `["soccer", "baseball"]`? What governing principal is reponsible?

```ruby
def new_value(array)
  array += ['baseball']
end

array = ['soccer']
new_value(array)
p array
```

---
## Andrew

1  What is returned from the method invocation `separate_name`? 

```ruby
def separate_name(full_name)
  full_name.split(' ')
end

first_name, second_name = separate_name('John Doe')
p first_name
p second_name
```

2 Why is `USER_NAME` accessible to the methods scope? What would change if we used a local variable instead?

```ruby
USER_NAME = 'Jeanie'

def welcome_user
  puts "Welcome #{USER_NAME}!"
end

p welcome_user

```

3 Where is the error and why can't it be printed? Comment the error out and describe what prints
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
p third
```

4 Describe what is printed for each of the three `puts` and why they are different

```ruby
arr = [0, 1, 'a', 'b', 10]
puts arr[2..-1]
puts arr[2...-1]
puts arr[-2]
```

5 Describe the code. Does this work without the #to_s method and what is capitalized names with out it?

```ruby
family = {
  john: 'Father',
  jane: 'Mother',
  lyle: 'Son',
  lily: 'Daughter'
}

capitalized_names = family.keys.map do |name|
  name.capitalize
end
p capitalized_names
```
