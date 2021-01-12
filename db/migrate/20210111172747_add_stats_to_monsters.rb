class AddStatsToMonsters < ActiveRecord::Migration[6.0]
  def change
    add_column :monsters, :size, :string

    add_column :monsters, :type, :string
    add_column :monsters, :tags, :string

    add_column :monsters, :alignment, :string

    add_column :monsters, :armor_class, :integer
    add_column :monsters, :hit_points, :integer

    add_column :monsters, :saving_throws, :text
    add_column :monsters, :languages, :text

    add_column :monsters, :strength, :integer
    add_column :monsters, :dexterity, :integer
    add_column :monsters, :constitution, :integer
    add_column :monsters, :intelligence, :integer
    add_column :monsters, :wisdom, :integer
    add_column :monsters, :charisma, :integer

    add_column :monsters, :senses, :string

    add_column :monsters, :actions, :text
    add_column :monsters, :reactions, :text

    add_column :monsters, :loot, :text

  end
end
