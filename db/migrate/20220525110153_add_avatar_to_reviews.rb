class AddAvatarToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :avatar, :string
  end
end
