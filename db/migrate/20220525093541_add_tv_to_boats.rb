class AddTvToBoats < ActiveRecord::Migration[6.1]
  def change
    add_column :boats, :tv, :boolean
  end
end
