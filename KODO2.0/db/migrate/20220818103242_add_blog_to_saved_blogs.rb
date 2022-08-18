# frozen_string_literal: true

class AddBlogToSavedBlogs < ActiveRecord::Migration[6.1]
  def change
    add_reference :saved_blogs, :blog, null: false, foreign_key: true
  end
end
