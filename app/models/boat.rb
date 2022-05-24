class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :image

  validates :image, presence: true
end
