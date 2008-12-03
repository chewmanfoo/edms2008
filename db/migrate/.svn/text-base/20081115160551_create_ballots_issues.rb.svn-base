class CreateBallotsIssues < ActiveRecord::Migration
  def self.up
    create_table :ballots_issues, :id => false do |t|
      t.integer :ballot_id
      t.integer :issue_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ballots_issues
  end
end
