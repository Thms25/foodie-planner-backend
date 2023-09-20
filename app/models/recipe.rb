class Recipe < ApplicationRecord
  has_one_attached :photo
  validates :title, :description, :servings, :category, presence: true
  validates :prep_time, :rate, :servings, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
