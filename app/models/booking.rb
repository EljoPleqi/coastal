class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :reviews

  validates :check_in, presence: true
  validates :check_out, presence: true

  validate :no_reservation_overlap

 scope :overlapping, -> (check_in, check_out) do
    where "((check_in <= ?) and (check_out >= ?))", check_out, check_in
 end


private

def no_reservation_overlap
  if (Booking.overlapping(check_in, check_out).any?)
     errors.add(:check_out, 'it overlaps another reservation')
  end
end
end
