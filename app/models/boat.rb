class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :image

  validates :photo, presence: true
  validates :title, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :size, presence: true
  validates :description, presence: true
  
end
