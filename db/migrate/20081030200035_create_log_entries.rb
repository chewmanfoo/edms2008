class CreateLogEntries < ActiveRecord::Migration
  def self.up
    create_table :log_entries do |t|
      t.string :name
      t.text :note
      t.integer :creator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :log_entries
  end
end
