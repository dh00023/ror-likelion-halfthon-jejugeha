class AddColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :x, :float
    add_column :posts, :y, :float
    add_column :posts, :rating, :string
    add_column :posts, :category, :string
  end
end
