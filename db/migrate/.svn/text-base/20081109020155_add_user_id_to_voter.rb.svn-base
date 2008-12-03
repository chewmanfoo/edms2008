class AddUserIdToVoter < ActiveRecord::Migration
  def self.up
    add_column :voters, :user_id, :integer
    add_column :reporters, :user_id, :integer
    add_column :executives, :user_id, :integer
  end

  def self.down
    remove_column :voters, :user_id
  end
end
