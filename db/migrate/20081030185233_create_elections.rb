class CreateElections < ActiveRecord::Migration
  def self.up
    create_table :elections do |t|
      t.string :name
      t.string :description
      t.datetime :start
      t.datetime :end
      t.string :time_zone

      t.timestamps
    end
  end

  def self.down
    drop_table :elections
  end
end
