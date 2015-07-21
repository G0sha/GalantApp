class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, :description, :image, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|jpeg|png)}i,
    message: "URL должен указывать на изображение формата GIF,JPG, JPEG или PNG."
  }
  validates :group, presence: true
  validates :subgroup, presence: true
end
