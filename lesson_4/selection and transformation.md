selection and transformation

selection is picking certain items in a collection based on a criteria
- can result in n or less elements
- selecting a portion of each element to a new collection

transformation refers to manipulating every element in a collection

-always results in n elements
-appending an s to every element for example
- pay attention if a new collection is returned or if its a mutation

each
-the each method is equivilent to a loop to iterate
-returns the original collection (original can be mutated)
 
 select
 - iterate or loop over a collection and SELECT things
 -only cares about truthiness of the block
 - truthy elements are selected
 - returns a new collection based on the truthy elements
 - the return value is the most important, if last line in the block results in nil, it will be empty (puts)
 
 map
 - iterate or loop over a collection to transform based on criteria
 - a new collection is returned
 - if evaluation but no instruction, willreturn collection of booleans