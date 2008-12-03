class AddGroupCodeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :group_code, :string
  end

  def self.down
    remove_column :users, :group_code
  end
end
