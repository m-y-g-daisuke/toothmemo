class Template < ApplicationRecord
  has_many :posts_templates
  has_many :posts, through: :posts_templates
end
