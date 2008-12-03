class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :name
      t.integer :creator_id
      t.integer :election_id
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
