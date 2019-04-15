class Property < ApplicationRecord
  belongs_to :user
  has_many :amenities
  has_many :photos
  
  accepts_nested_attributes_for :amenities
  accepts_nested_attributes_for :photos

end
