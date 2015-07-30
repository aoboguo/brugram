class Photo < ActiveRecord::Base
  validates :image, :user, presence: true
  validates :public, inclusion: { in: [true, false] }

  belongs_to :user
  has_many :comments, dependent: :destroy
end