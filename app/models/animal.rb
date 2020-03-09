class Animal < ApplicationRecord
  has_many :posts
  has_many :breeds
  belongs_to :user
  
end
