todo_list = []
puts "enter a text to add to todo"
text = gets.chomp
todo_list.push(text)
puts "the todos are \n"
todo_list.each do |x| puts "#{x}"
end 

todo_list.map {|x|}
