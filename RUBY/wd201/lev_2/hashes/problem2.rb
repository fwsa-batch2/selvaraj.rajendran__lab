# Problem 2.
#  Given this list of todos,
#   create a Hash keyed by category,
#   whose value is an array containing all the todos in that category.
#   The keys of the Hash must be a symbol.

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"],
]

data = []
for i in 0...todos.length
  input = todos[i][1]
  data.push(input)
end

#or with each

# todos.each do |i|
#   data.push(i[1])
# end
hash = {}
category = data.uniq
for i in 0...category.length
  puts category_name = category[i]
  sub_arr = []
  for j in 0...todos.length
    if category_name == todos[j][1]
      sub_arr.push(todos[j][0])
    end
  end

  hash.store(category_name.to_sym, sub_arr)
end
print hash
