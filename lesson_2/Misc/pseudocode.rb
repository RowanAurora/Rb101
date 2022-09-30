=begin
  1.
    Method that is returns the sum of two integers

    -Define method, set to accept two arguments
    -Save (argument 1 + argument 2) to new variable(sum)
    -return 

    START
     
    # Method that returns the sum of two integers

    Given two integers
    Define method that accepts two arguments
    SET new variable to be argument 1 (integer) added to argument 2 (integer)
    Return is value of new variable
    END
  

=end
def add(int_1, int_2)
  int_3 = int_1 + int_2
end
  

=begin
  2.
    A method that takes an array of strings and returns a string that is all those strings concatenated togehter
    
    Given a string

    #Define method for string concatation
    -Have method accept 1 argument
    -Set a new variable
    -Append each String to new variable with delimitor (" ")
    end

    START
    # A method that takes an array of strings and returns a string that is all those strings concatenated togehter
    
    Given an array of strings
    
    Define method to accept 1 argument 
    SET new_string
    Append Each string from array to new_string with delimitor " "
    END
=end

  def string_concatenater(my_array)
   new_string = my_array.join(" ")
  end

=begin
  3.
  a method that takes an array of integers and returns a new array with every other element
   from the original array starting with the first element
  
  Given an array of integers

  define method that accepts one argument
    -create new variable new_arr
    -iterate through the array of integers
      -select every other integer, startin with the first using the index
      -add the item indexed at 0 and every even number that occurs to the new array
    -return new array

  START
  
  # Given an array of integers 
  SET new_arr = iterating over array of integers using index
    If Index = 0 or index = even output to new_arr
  return value of new array
  END

=end

def every_other(int_array)
  new_arr = int_array.select.with_index do |value, index|
            index == 0 || index.even?
  end
 end

=begin
 4. 
 a method that determines the index of the 3rd occurrence of a given character
  in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex',
   the method should return 6 (the index of the 3rd 'x'). 
   If the given character does not occur at least 3 times, return nil.

  # Given a string, determine the index of the third occurence of a given character
  -create a variable = 3 to determine which occurance we want to select
  -iterate over each character in the string with index
  - subtract 1 from count for ever match
  - when count = 0 returns true return index number
  
  START

  # Given a string called string, determine the index of the third occurence of a given character (called X )
  
  SET count = 3
  Iterate over each character in the string 
  If string_character = x is false, short circuit
  If string_character = x is TRUE 
    count = count - 1
    if count = 0,  evaluate true
    else,  evaluate false
  If string Character = x is TRUE AND count = count - 1 is TRUE Return Index
  If both do not evaluate true before end of string, return nil
   
  
=end

#this was a lot to figure out, foudn solution, worked back to figure out how it was working
#wrote a less abstacted version
#Needed to see how this code worked before being able to parse the logic.



def third(string, chr)
  count = 3
  string.each_char.find_index do
    |letter| letter == chr && (count = count - 1) == 0
  end
end

p third("xfsdgsaatxxgws", "x")

=begin 
a method that takes two arrays of numbers and returns the result of merging the arrays. 
The elements of the first array should become the elements at the even indexes of the returned array,
while the elements of the second array should become the elements at the odd indexes. 
  

Given two arrays of numbers called number1 and number2
create new variabel numbers3
create a loop that inputs an integer from number1, then number 2 
then takes the next character from each until all integers are input into numbers 3
return the new array numbers 3

BEGIN

# Given two arrays of numbers called numbers_1 and numbers_2

SET numbers_3
SET counter = 0

WHILE counter does not = lenght of array 
  Input integer(counter) from numbers_1 to numbers_3
  Input integer(counter) from numbers_2 to numbers_3
  counter + 1
return numbers 3
END

=end


def fan(arr_1, arr_2)
arr_3 = arr_1.zip(arr_2)
arr_3.flatten!
end


def fan(arr_1, arr_2)
  count = 0
  arr_3 = []
    until count == arr_1.length
    arr_3 << arr_1[count]
    arr_3 << arr_2[count]
    count += 1
  end 
  arr_3
end


