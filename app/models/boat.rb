class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :images

  validates :images, presence: true
  validates :title, presence: true

  validates :address, presence: true
  validates :price, presence: true, numericality: { other_than: 0 }
  validates :size, presence: true, numericality: { other_than: 0 }
  validates :description, presence: true, length: { minimum: 5 }

  after_validation :geocode, if: :will_save_change_to_address?
  geocoded_by :address

end
