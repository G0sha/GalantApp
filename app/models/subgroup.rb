class Subgroup < ActiveRecord::Base
  belongs_to :group
  validates :name, presence: true, length: {maximum: 50}, uniqueness: true
end
