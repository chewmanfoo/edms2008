class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.string :name
      t.text :body
      t.string :photo_url
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
