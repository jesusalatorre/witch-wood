class AddTimestampToMonsters < ActiveRecord::Migration[6.0]
  def change
    add_column :monsters, :created_at, :datetime
    add_column :monsters, :updated_at, :datetime
  end
end
