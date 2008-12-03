class AddGroupCodeToGroup < ActiveRecord::Migration
  def self.up
    add_column :groups, :group_code, :string
  end

  def self.down
    remove_column :groups, :group_code
  end
end
