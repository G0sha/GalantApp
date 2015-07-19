class Group < ActiveRecord::Base
  has_many :subgroup
  validates :name, presence: true, length: {maximum: 50}, uniqueness: true
end
