class AddLikesToTweeets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweeets, :references, :likes
  end
end
