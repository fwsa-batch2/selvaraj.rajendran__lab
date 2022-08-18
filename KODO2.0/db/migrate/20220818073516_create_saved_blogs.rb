# frozen_string_literal: true

class CreateSavedBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_blogs, &:timestamps
  end
end
