class AddIndexToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :index, :integer
  end
end
