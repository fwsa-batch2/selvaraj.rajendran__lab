require "active_record"

def connect_db!
  ActiveRecord::Base.establish_connection(
    adapter: "mysql2",
    port: 3306,
    host: "localhost",
    username: "ACE",
    password: "karanss08",
    database: "todos_test",
  )
  puts "connected"
end

 