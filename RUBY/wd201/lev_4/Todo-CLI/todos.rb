require "active_record"

class Todo < ActiveRecord::Base
  def self.show_list
    puts "My todo list"
    puts "Over due"
    all.map { |todo| todo.overdue }
    puts "Due today"
    all.map { |todo| todo.duetoday }
    puts "Due later"
    all.map { |todo| todo.duelater }
  end

  def due_today?
    due_date == Date.today
  end

  # def to_displayable_string
  #   display_status = completed ? "[X]" : "[]"
  #   display_date = due_today? ? nil : due_date
  #   "#{id} . #{display_status} #{todo_text} #{display_date}"
  # end

  def self.to_displayable
    display_status = completed ? "[X]" : "[]"
    display_date = due_today? ? nil : due_date
    "#{display_status} #{todo_text} #{display_date}"
  end
  
  def self.to_displayable_list
    all.map { |todo| todo.to_displayable_string }
  end
  
  def self.add_task(new_hash)
    todo_text = new_hash[:todo_text]
    due_in_days = new_hash[:due_in_days]
    due_date = Date.today + due_in_days
    insert_into_table(todo_text, due_date)
  end
  def self.insert_into_table(todo_text, due_date)
    Todo.create!(todo_text: todo_text, due_date: due_date, completed: false)
  end
  def self.mark_as_completed(todo_id)
    mac = Todo.find(todo_id)
    mac.completed = true
    mac.save
  end
  def self.mark_as_incompleted(todo_id)
    mac = Todo.find(todo_id)
    mac.completed = false
    mac.save
  end
  
  def overdue
    array =[]
    status = completed ? "[X]" : "[ ]"
    if due_date < Date.today
      array.push("#{id}. #{status} #{todo_text}  #{due_date}\n")
    end
    puts array
  end
  
  def duetoday
    array =[]
    status = completed ? "[X]" : "[ ]"
    if due_date == Date.today
      array.push("#{id}. #{status} #{todo_text} \n")
    end
    puts array
  end
  
  def duelater
    array =[]
    status = completed ? "[X]" : "[ ]"
    if due_date > Date.today
      array.push("#{id}. #{status} #{todo_text}  #{due_date}\n")
    end
    puts array
  end
end

  # def to_displayable_string
  #   status = completed ? "[X]" : "[ ]"
  #   #  "#{id} -> #{todo_text} -> #{due_date}"
  #   if due_date < Date.today
  #     puts "Overdue\n"
  #     puts "#{id}. #{status} #{todo_text}  #{due_date}\n\n\n\n"
  #   elsif due_date == Date.today
  #     puts "Due today\n"
  #     puts "#{id}. #{status} #{todo_text}  #{due_date}\n\n\n\n"
  #   elsif due_date > Date.today
  #     puts "Over later\n"
  #     puts "#{id}. #{status} #{todo_text}  #{due_date}\n\n\n\n"
  #   else
  #     "please try again"
  #   end
  # end
