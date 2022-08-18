# frozen_string_literal: true

class UsersIdToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :user_id, :integer
  end
end
