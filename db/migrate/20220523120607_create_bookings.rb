class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.integer :boat_id
      t.integer :user_id

      t.timestamps
    end
  end
end
