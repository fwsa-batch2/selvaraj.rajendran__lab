#Problem 2.
# Given two arrays books and authors,
#  merge them and print who wrote which book.

books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

if books.length == authors.length

for i in 0..books.length do 
    for j in 0..authors.length do 
        if i == j 
            puts "#{books[i]} was written by #{authors[j]}"
            end
        end
    end
else
    puts "number of books and authoer doesn't match"
    end