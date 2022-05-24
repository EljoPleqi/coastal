class Boat < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :price, numericality: { other_than: 0 }
  validates :size, numericality: { other_than: 0 }
  validates :description, length: { minimum: 5 }
end
