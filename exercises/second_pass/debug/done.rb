=begin
We wrote a method for moving a given number of elements from one array to another. 
We decide to test it on our todo list, but invoking move on line 11 results in a SystemStackError. 
What does this error mean and why does it happen?

The error system stack error means that the stack was maxxed out for ruby. There is a max number of operations that can be stacked
There is no breaking trigger for the recursion so it is infinite
=end

def move(n, from_array, to_array)
  return to_array if from_array.size == from_array.size - n || from_array.empty?
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(5, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']