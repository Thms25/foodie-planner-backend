class Recipe < ApplicationRecord
  has_one_attached :photo
  validates :title, :description, :servings, :category, presence: true
  validates :prep_time, :servings, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def photo_url
    if photo.attached?
      # photo.url.split('cloudinary.com/')[-1]
      cloudinary_url = Cloudinary::Utils.cloudinary_url(photo.key)
      cloudinary_url.split('cloudinary.com/')[-1]
    else
      ''
    end
  end
end
