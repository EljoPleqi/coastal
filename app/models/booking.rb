class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :reviews

  validates :check_in, presence: true
  validates :check_out, presence: true
end
