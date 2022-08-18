# frozen_string_literal: true

class Ace < ApplicationRecord
  has_one_attached :img
  has_rich_text :name
end
