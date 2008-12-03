class AddCreatorModeratorToTopic < ActiveRecord::Migration
  def self.up
    add_column :topics, :voter_id, :integer
    add_column :topics, :moderator_id, :integer
    add_column :topics, :created_by_moderator, :boolean
  end

  def self.down
    remove_column :topics, :created_by_moderator
    remove_column :topics, :moderator_id
    remove_column :topics, :voter_id
  end
end
