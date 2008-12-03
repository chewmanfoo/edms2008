class CreateAnnouncementTypes < ActiveRecord::Migration
  def self.up
    create_table :announcement_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :announcement_types
  end
end
