require "./connect_db.rb"
require "./todos.rb"
connect_db!


puts  Todo.show_list
 