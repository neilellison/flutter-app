class AddCountToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :count, :integer
  end
end
