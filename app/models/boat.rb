class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :image

  validates :image, presence: true
  validates :title, presence: true
  validates :image, presence: true

  validates :city, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: { other_than: 0 }
  validates :size, presence: true, numericality: { other_than: 0 }
  validates :description, presence: true, length: { minimum: 5 }

end
