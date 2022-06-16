library = ["book1", "book2", "book3", "book4"]

print library
puts "\n"
puts library_length = library.length

library.push("nbook5")

print library
puts "\n"
library.each { |x| puts x }

#
library_new = []
for i in 0..5
  puts library_new.push("book#{i}")
end
puts "\n"
print library_new
