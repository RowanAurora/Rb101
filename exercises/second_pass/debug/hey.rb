=begin

PROBLEM:
The code produces HEY you instead of HEY YOU. change it so it produces the former

=end

def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end


shout_out_to('you') # expected: 'HEY YOU'