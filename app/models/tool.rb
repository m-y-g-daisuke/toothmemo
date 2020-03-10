class Tool < ApplicationRecord
  has_many :posts_tools
  has_many :posts, through: :posts_tools
end
