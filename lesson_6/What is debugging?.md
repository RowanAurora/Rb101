What is debugging?
- bugs are human errors in code
- debugging is the porcess of identifying and fixing those errors

How do we debug
- identify the problem
  -what is causing the problem
- understand the problem
  - why is this line causing a problem
- implement a solution

Types of errors
- syntax errors
  -code written does not conform to the grammar of the programming language
  -stops code from functioning generally
- logical errors
  -Errors in the logic of the code
  -code generally runs buts not in desired way

What is pry
- a Rubygem
- a REPL
  - read evaluate print loop

Using pry
-changing scope with cd
- context with ls
- call methods in context
- access documentation with show-doc

Invoking pry at runtime
- binding.pry
  - a binding is something that contains a reference to any variables
  that were in scope at the point it was created
- pry interupts programs and pries open the program so we can look around
- access to anything in scope at the moment the binding.pry is invoked

Stepping through code
-whereami
-pry-byebug
  -extends pry with some additional commands
    -next
    -step
    -continue
  -similar gems exists liek pry-nav and pry-debugger
  - concept of stepping through code not limited to pry to ruby
    -equivilents in other languages such as chrome dev tools debugger
  - require 'pry-byebug'

Take aways
- important skill to learn and practice
  -tools not required but makes it much easier
- use tools to learn more about code
-the concepts are not limited to ruby