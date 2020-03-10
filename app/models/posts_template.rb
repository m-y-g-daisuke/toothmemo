class PostsTemplate < ApplicationRecord
  belongs_to :post
  belongs_to :template
end
