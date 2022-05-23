class AddAssocUserBoats < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :boats, :users, column: :user_id
  end
end
