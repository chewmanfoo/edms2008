class CreateBackups < ActiveRecord::Migration
  def self.up
    create_table :backups do |t|
      t.string :name
      t.integer :creator_id
      t.text :note
      t.string :type
      t.datetime :executed_at

      t.timestamps
    end
  end

  def self.down
    drop_table :backups
  end
end
