class Plat < ApplicationRecord
  acts_as_votable
  validates :description, length: { maximum: 140 }
  belongs_to :user
  has_many :comments
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
