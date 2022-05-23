class AddForeignKeysToBooking < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :bookings, :users, column: :user_id
    add_foreign_key :bookings, :boats, column: :boat_id
  end
end
