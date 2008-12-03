class ChangeGroupTypeIdToRoleIdInGroups < ActiveRecord::Migration
  def self.up
    rename_column :groups, :group_type_id, :role_id
  end

  def self.down
    rename_column :groups, :role_id, :group_type_id
  end
end
