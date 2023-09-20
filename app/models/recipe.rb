class Recipe < ApplicationRecord
  has_one_attached :photo
  validates :title, :description, :servings, :category, presence: true
  validates :prep_time, :rate, :servings, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def photo_url
    if photo.attached?
      "https://res.cloudinary.com/#{Cloudinary.config.cloud_name}/image/upload/v1694797150/development/#{photo.key}.jpg"
    else
      ''
    end
  end
end
