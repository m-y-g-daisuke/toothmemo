class PostsTagWord < ApplicationRecord
  belongs_to :post
  belongs_to :tag_word
end
