class AddFeaturesToBoats < ActiveRecord::Migration[6.1]
  def change
    add_column :boats, :wifi, :boolean
    add_column :boats, :jetski, :boolean
    add_column :boats, :lifeboat, :boolean
    add_column :boats, :safety_jackets, :boolean
    add_column :boats, :shower_room, :boolean
    add_column :boats, :minibar, :boolean
    add_column :boats, :kitchen, :boolean
    add_column :boats, :fishing_equipment, :boolean
    add_column :boats, :aquarium, :boolean
  end
end
