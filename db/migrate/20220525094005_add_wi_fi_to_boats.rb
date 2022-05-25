class AddWiFiToBoats < ActiveRecord::Migration[6.1]
  def change
    add_column :boats, :wifi, :boolean
  end
end
