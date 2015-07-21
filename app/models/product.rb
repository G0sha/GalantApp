class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, :description, :image, :group, :subgroup, :price,
            presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
end
