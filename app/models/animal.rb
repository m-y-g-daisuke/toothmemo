class Animal < ApplicationRecord
  has_many :posts
  belongs_to :breed
  belongs_to :user
  validates :name, presence: true
  validates :image, presence: true
  validates :sex, presence:true
  
  mount_uploader :image, ImageUploader

  #生年月日から年齢を出すメソッド
  def age
    if self.birth.present?
      require"date"
      birthday=self.birth
      d=Date.today 

      year= d.year - birthday.year
      month = d.month - birthday.month
      day= d.day - birthday.day

      month >= 0 || day>= 0 ? "#{age=year}" : "#{age=year - 1}"
    end
  end

end
