require 'active_record'

def connect_db!
  ActiveRecord::Base.establish_connection(
    host: 'localhost', 
    adapter: 'mysql2',
    database: 'todo_test', 
    user: 'ACE', 
    password: 'karanss08'
  )
  puts "connected"  
end
connect_db!