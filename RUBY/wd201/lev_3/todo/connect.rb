require "active_record"
require "mysql2"

def connect_db
  ActiveRecord::Base.establish_connection(
    adapter: "mysql2",
    database: "DB_Todo",
    username: "ACE",
    password: "karanss08",
    host: "localhost",
  )
  puts "connected"
end
connect_db