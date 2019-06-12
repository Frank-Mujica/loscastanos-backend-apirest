class CreateLupulos < ActiveRecord::Migration[5.2]
  def change
    create_table :lupulos do |t|
      t.string :name
      t.string :origin
      t.string :description
      t.integer :stock
      t.string :lupulo_type
      t.string :cone_size
      t.string :cone_shape
      t.float :alfa_acids
      t.float :beta_acids
      t.float :cohumulones
      t.float :columbus
      t.float :storage_index
      t.float :humidity
      t.string :uses
      t.string :beer_type
      t.integer :grams

      t.timestamps
    end
  end
end
