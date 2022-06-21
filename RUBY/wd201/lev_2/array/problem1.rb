# Problem 1.
#Given a nested array of first names and last names,
# return a new array with the full names.

#solutuion

names = [
          ["ace", "avles"],
          ["selva", "raj"],
          ["selva", "karan"],
        ]
# print names

full_name = []

names.each do |x|
  full_name.push(x.join(""))
end
print full_name
