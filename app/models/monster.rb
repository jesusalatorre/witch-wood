class Monster < ApplicationRecord
  belongs_to :user
  
  validates :name, presence: true, length: { minimum: 3, maximum: 40 }
  validates :description, presence: true, length: { minimum: 3, maximum: 150 }
  
  validates :monster_type, presence: true
  validates :size, presence: true

  validates :armor_class, presence: true, numericality: { only_integer: true, greater_than: 0}
  validates :hit_points, presence: true, numericality: { only_integer: true, greater_than: 0}

  validates :strength, presence: true, numericality: { only_integer: true, greater_than: 0}
  validates :dexterity, presence: true, numericality: { only_integer: true, greater_than: 0}
  validates :constitution, presence: true, numericality: { only_integer: true, greater_than: 0}
  validates :intelligence, presence: true, numericality: { only_integer: true, greater_than: 0}
  validates :wisdom, presence: true, numericality: { only_integer: true, greater_than: 0}
  validates :charisma, presence: true, numericality: { only_integer: true, greater_than: 0}

end