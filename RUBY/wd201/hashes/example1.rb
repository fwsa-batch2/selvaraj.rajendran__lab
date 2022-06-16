gender = {
  "selva" => "male",
  "aswath" => "male",     #we define a hash and store value using a key
  "selvi" => "female",

}

puts gender["selvi"]  #we can use key to get value from the hash

class_room = {} # empty hash
class_room["selva"] = ["male", "22", "ace"]
class_room["haiden"] = ["male", "20", "don"]

#puts class_room

class_room.each do |name, details| # we can use each to loop through a hash
  puts ("he is #{name} and this is his details #{details}")
end
