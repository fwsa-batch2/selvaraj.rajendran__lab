require '/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/connect_db.rb'
require '/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/todo.rb'
# connect_db!

# displayable_list = Todo.all.map {|todo| todo.to_displayable_string }
# puts displayable_list

# puts Todo.to_displayable_list

puts Todo.where(completed: false).to_displayable_list