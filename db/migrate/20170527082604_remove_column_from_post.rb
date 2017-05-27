class RemoveColumnFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :x, :float
    remove_column :posts, :y, :float
  end
end
