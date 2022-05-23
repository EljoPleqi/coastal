class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :title
      t.string :image
      t.integer :price
      t.string :city
      t.string :address
      t.integer :size
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
