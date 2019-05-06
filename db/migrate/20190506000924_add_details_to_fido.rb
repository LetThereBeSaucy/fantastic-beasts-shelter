class AddDetailsToFido < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :color, :string
    add_column :animals, :breed, :string
    add_column :animals, :sex, :string
    add_column :animals, :likes, :text
  end
end
