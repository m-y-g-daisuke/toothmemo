class Animal < ApplicationRecord
  has_many :posts
  belongs_to :breed
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
