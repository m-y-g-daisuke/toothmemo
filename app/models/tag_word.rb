class TagWord < ApplicationRecord
  has_many :posts_tag_words
  has_many :posts, through: :posts_tag_words
end
