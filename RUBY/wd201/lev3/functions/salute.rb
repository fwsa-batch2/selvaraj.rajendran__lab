def salute(name, greet)
  name_sen = name.split.last
  sentence = "#{greet.capitalize} Mr.#{name_sen.capitalize}"
end

puts salute("Nelson Rolihlahla Mandela", "hello")
puts salute("Sir Alan Turing", "welcome")
