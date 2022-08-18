# frozen_string_literal: true

class AddUserToSavedBlogs < ActiveRecord::Migration[6.1]
  def change
    add_reference :saved_blogs, :user, null: false, foreign_key: true
  end
end
