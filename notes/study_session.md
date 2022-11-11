AGENDA - WRITTEN ASSESSMENT

- introduction
- assessment format:
  - 3-hour time limit
  - 20-23 questions (ish)
  - save your answers
  - using Markdown
- tips and tricks:
  - manage your time
  - brevity and clarity in all things, but don't leave out key details, precise terminology, or fundamental concepts
- questions?
- practice code snippets


# Explain the following code, and identify the output. What underlying concepts does this demonstrate?

def random_method(value)
  puts value if value
end
  
if random_method(true)
  new_value = "The if branch ran"
elsif random_method(!true)
  new_value = "The elsif branch ran"
else
  new_value = "The else branch ran"
end
  
p new_value
  
# What will this code output and why?

# How the truthiness affects the flow control


# Explain the following code, and identify the output. What underlying concepts does this demonstrate?

a = 'red'
b = 'green'

loop do
  c = b
  a = c
  break
end

puts a # => ?
puts b # => ?
puts c # => ?

