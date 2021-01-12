class FixTypeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :monsters, :type, :monster_type
  end
end
