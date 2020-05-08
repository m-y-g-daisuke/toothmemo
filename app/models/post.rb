class Post < ApplicationRecord
  has_many :posts_tools ,dependent: :delete_all
  has_many :posts_tag_words, dependent: :delete_all
  has_many :tools, through: :posts_tools
  has_many :tag_words, through: :posts_tag_words
  belongs_to :animal

  validates  :recorded_at, presence: true

  mount_uploader :image, ImageUploader
end
