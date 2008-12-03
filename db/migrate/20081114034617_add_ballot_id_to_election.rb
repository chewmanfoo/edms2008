class AddBallotIdToElection < ActiveRecord::Migration
  def self.up
    add_column :elections, :ballot_id, :integer
  end

  def self.down
    remove_column :elections, :ballot_id
  end
end
