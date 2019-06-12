class ChangeColumnsToLupulos < ActiveRecord::Migration[5.2]
  def change
    rename_column :lupulos, :alfa_acids, :alpha_acids
  end
end
