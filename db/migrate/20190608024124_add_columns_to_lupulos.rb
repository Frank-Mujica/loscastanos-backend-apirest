class AddColumnsToLupulos < ActiveRecord::Migration[5.0]
  def change
    add_column :lupulos, :price, :integer, :null => false
    add_column :lupulos, :image, :string, :null => false
  end
end