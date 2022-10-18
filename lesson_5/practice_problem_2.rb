# problem: array of nested hashes. sort by value of published earlist to latest
#first, access inner objects
#second, sort according to value of published key value pair
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:published]
end

# originally did 
# books.sort do |a, b|
#   a[:published].to_i <=> b[:published].to_i
# end
# but all years are the same lenght in the hash so no need to convert
# sorting by array, each hash element accessing the :published key


