# frozen_string_literal: true

class Blog < ApplicationRecord
  has_rich_text :content
  has_one_attached :blogImage
  has_one :saved_blogs
end
