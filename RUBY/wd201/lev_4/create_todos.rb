require "/home/selvarajrajendran/selvaraj.rajendran__lab/RUBY/wd201/lev_4/connect_db.rb"
connect_db!

ActiveRecord::Migration.create_table(:todos) do |t|
  t.column :todo_text, :text
  t.column :due_date, :date
  t.column :completed, :bool
end
