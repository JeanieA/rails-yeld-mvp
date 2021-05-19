class RemoveIndexFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :index, :integer
  end
end
