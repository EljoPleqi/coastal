class AddAirConditioningToBoats < ActiveRecord::Migration[6.1]
  def change
    add_column :boats, :air_conditioning, :boolean
  end
end
