class Todo
  def initialize(todo)
    @todo = todo
  end

  def to_displayable_string #returns the todo
    @todo
  end
end

class TodosList
  def initialize
    @todos_list = []
  end

  def add(todo)
    @todos_list.push(todo)
  end

  def print
    @todos_list.each do |x| puts "#{x}" end
  end
end

list = TodosList.new
# puts "welcome, enter your name to proceed"
# name = gets.chomp
# puts "#{name} welcome to simple todo"
# puts "a\n\n\n\""

puts "please enter \n [A] to add todo \n [L] to list todo"
user_input = gets.chomp.downcase
if user_input  == "a"
  puts "enter the text to add to todo list" 
   text = gets.chomp
   list.add(text)
   list.print
elsif user_input == "l"
  list.print
else
  puts "please give 'a' or 'l' to move" 
end
