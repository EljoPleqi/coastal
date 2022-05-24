class AddRatingAndContentToTheReview < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :rating, :string
        add_column :reviews, :content, :text
  end
end
