class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :name
      t.integer :voter_id
      t.integer :moderator_id
      t.boolean :created_by_moderator
      t.text :body
      t.integer :num_comments

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
