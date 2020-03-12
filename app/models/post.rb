class Post < ApplicationRecord
  has_many :posts_tools
  has_many :posts_templates
  has_many :tools, through: :posts_tools
  has_many :templates, through: :posts_templates
  belongs_to :animal

  validates  :recorded_at, presence: true

  mount_uploader :image, ImageUploader
end
