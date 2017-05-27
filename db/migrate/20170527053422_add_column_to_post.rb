class AddColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :x, :string
    add_column :posts, :y, :string
    add_column :posts, :rating, :string
    add_column :posts, :category, :string
  end
end
