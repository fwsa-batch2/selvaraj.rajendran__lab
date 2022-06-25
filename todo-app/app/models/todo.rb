class Todo < ApplicationRecord
    validates :task, :date, presence: true 
end
