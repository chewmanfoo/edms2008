class ChangeIssuesBody < ActiveRecord::Migration
  def self.up
    remove_column :issues, :body
    add_column :issues, :body, :text
  end

  def self.down
  end
end
