## Rails Command Line Cheat Sheet:

Create a New Rails App: $ rails new “app_name_goes_here”

Create a New Rails App w/ Postgres Database: $ rails new “app_name_goes_here” -d=postgresql
Create a New Rails App w/o Minitest: $ rails new “app_name_goes_here” -T

If you add a new gem, don’t forget to $ bundle install

Show all existing routes: $ rake routes

Open Rails Console: $ rails console

Setup Database (create database, load the schema, initialize it with seed data): $ rails db:setup
Reset Database: $ rails db:reset (equivalent to rails db:drop db:setup)
Run Migrations: $ rake db:migrate

Start Rails Server: $ rails s OR $ rails server

### Generating Migrations from the command line (the command is in the “”):
Create a table: $ “rails g migration CreateYYY” where YYY is the name of the table you want to create

Create a table with columns: $ “rails g migration CreateYYY XXX:datatype ZZZ:datatype” where XXX and ZZZ are columns, and YYY is the table

Add a column to a table: $ “rails g migration AddXXXToYYY XXX:datatype” where XXX is the column, and YYY is the table

Remove a column from a table: $ “rails g migration RemoveXXXFromYYY XXX:datatype” where XXX is the column, and YYY is the table

Add a reference column to a table: $ “rails g migration AddAAARefToBBB AAA(singular):references” where AAA is the table supplying the foreign key to be inserted into the BBB table

Create a join table: $ “rails g migration CreateJoinTableXXXYYY XXX YYY” where XXX and YYY are the two tables supplying the foreign keys to the join table

Rollback Migration: $ rails db:rollback
