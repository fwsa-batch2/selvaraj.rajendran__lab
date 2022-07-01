require "/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/connect_db.rb"
require "/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/Todo-CLI/todos.rb"
# connect_db!

connect_db!
Todo.show_list

puts "Which todo do you want to mark as complete? (Enter id): "
todo_id = gets.strip.to_i

todo = Todo.mark_as_incompleted(todo_id)
puts Todo.show_list
 