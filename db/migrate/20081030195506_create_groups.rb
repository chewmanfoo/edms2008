class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
      t.integer :creator_id
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
