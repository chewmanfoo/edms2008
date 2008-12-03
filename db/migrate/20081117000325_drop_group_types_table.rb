class DropGroupTypesTable < ActiveRecord::Migration
  def self.up
    drop_table :group_types
  end

  def self.down
  end
end
