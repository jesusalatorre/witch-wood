class AddUserIdToMonster < ActiveRecord::Migration[6.0]
  def change
    add_column :monsters, :user_id, :int
  end
end
