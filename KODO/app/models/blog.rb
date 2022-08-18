class Blog < ApplicationRecord
    belongs_to :category
    has_rich_text :content
    has_one_attached :image
end
  