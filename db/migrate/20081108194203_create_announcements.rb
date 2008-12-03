class CreateAnnouncements < ActiveRecord::Migration
  def self.up
    create_table :announcements do |t|
      t.string :name
      t.text :body
      t.integer :announcement_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :announcements
  end
end
