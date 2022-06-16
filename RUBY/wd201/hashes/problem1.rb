# Problem 1. Given two arrays books and authors,
#  merge them into a single Hash.
#  The keys of the Hash must be the lower-cased
#  firstname of the authors, and must be symbols.

books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

library = {}

if books.length == authors.length
  for i in 0..books.length
    library.store(books[i].to_sym, authors[i])
  end
else
  puts "something went wrong"
end

puts library
