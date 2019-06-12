class ChangeTypeAddress < ActiveRecord::Migration[5.2]
  def up
    change_table :users do |t|
      t.change :address, :string
    end
  end

  def down
    change_table :users do |t|
      t.change :address, :integer
    end
  end
end
