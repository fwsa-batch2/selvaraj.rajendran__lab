# Problem 3.
#  Print the given list of todos by category.
# (You haven't learned Hashes yet, so use only arrays.)

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"],
]

temp = []
category_arr = []


todos.each do |i|
  temp.push(i[1])
end
category = temp.uniq
print category
puts "\n\n\n"

for i in 0...category.length
  category_name = category[i]
  sub_arr = []
  print category_name
  puts ": "
  for j in 0...todos.length
    if category_name == todos[j][1]
      sub_arr.push(todos[j][0]) 
      puts todos[j][0]
    end
  end
  puts "\n"
  input = [category_name, sub_arr]
  category_arr.push(input)
end

print category_arr
