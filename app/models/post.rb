class Post < ApplicationRecord
  has_many :posts_tools
  has_many :posts_tag_words
  has_many :tools, through: :posts_tools
  has_many :tag_words, through: :posts_tag_words
  belongs_to :animal

  validates  :recorded_at, presence: true

  mount_uploader :image, ImageUploader
end
