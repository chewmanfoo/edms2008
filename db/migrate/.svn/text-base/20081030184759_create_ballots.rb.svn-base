class CreateBallots < ActiveRecord::Migration
  def self.up
    create_table :ballots do |t|
      t.string :name
      t.integer :election_id
      t.integer :executive_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ballots
  end
end
