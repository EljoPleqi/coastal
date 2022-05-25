class RemoveCityFromBoat < ActiveRecord::Migration[6.1]
  def change
    remove_column :boats, :city
  end
end
