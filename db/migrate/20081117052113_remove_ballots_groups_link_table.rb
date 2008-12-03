class RemoveBallotsGroupsLinkTable < ActiveRecord::Migration
  def self.up
    drop_table :ballots_groups_link
  end

  def self.down
  end
end
