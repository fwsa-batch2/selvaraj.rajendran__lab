require "/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/connect_db.rb"
require "/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/Todo-CLI/todos.rb"

def get_new_todo
  puts "Todo text:"
  todo_text = gets.strip
  return nil if todo_text.empty?

  puts "How many days from now is it due? (give an integer value)"
  due_in_days = gets.strip.to_i

  {
    todo_text: todo_text,
    due_in_days: due_in_days,
  }
end
 
connect_db!
h = get_new_todo
if h
  new_todo = Todo.add_task(h)
  puts "\n\n\n\nNew todo created with id #{new_todo.id}\n\n"
  Todo.show_list
end
