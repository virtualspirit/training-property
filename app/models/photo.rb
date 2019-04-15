include ImageUploader[:image]

class Photo < ApplicationRecord
  belongs_to :property
end
