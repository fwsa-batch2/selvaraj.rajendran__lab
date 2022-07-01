require '/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/connect_db.rb'
require '/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/todo.rb'
connect_db!
Todo.create!(todo_text: "Buy groceries", due_date: Date.today + 4, completed: false)
Todo.create!(todo_text: "Call Acme Corp.", due_date: Date.today + 2, completed: true)
Todo.create!(todo_text: "File taxes", due_date: Date.today, completed: false)

