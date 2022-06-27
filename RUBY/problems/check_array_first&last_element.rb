# check whether first and the last element are the same of a given array of integers

array = ["vaishu"]

puts l_element = array.length - 1
if array[0] == array[l_element]
  puts "it is matching"
else
  puts "it is not matching"
end
#0R
if array.length == 1
  puts "array has only one element\nso first and last digit is #{array[0]}"
elsif array.first == array.last
  puts "true"
else
  puts "false"
end

