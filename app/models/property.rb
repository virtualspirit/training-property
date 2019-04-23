class Property < ApplicationRecord
  belongs_to :user
  has_many :amenities, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :bids, dependent: :destroy
  
  accepts_nested_attributes_for :amenities
  accepts_nested_attributes_for :photos

end
