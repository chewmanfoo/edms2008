class CreateBallotsCandidates < ActiveRecord::Migration
  def self.up
    create_table :ballots_candidates, :id =>false do |t|
      t.integer :ballot_id
      t.integer :candidate_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ballots_candidates
  end
end
