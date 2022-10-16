def short_long_short(string_1, string_2)
 case 
    when string_1.size > string_2.size
    new_string = string_2 + string_1 + string_2
   when string_1.size < string_2.size
    new_string = string_1 + string_2 + string_1
    end 
new_string
end
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

def short_long_short(string_1, string_2)
  string_1.size > string_2.size ? string_2 + string_1 + string_2 : string_1 + string_2 + string_1
end