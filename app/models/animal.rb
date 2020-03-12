class Animal < ApplicationRecord
  has_many :posts
  has_one :breed
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
