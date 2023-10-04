class Recipe < ApplicationRecord
  validates :title, :description, :servings, :category, :photo_url, presence: true
  validates :prep_time, :servings, presence: true, numericality: { only_integer: true, greater_than: 0 }

end
