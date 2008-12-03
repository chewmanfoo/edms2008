class CreateSysadmins < ActiveRecord::Migration
  def self.up
    create_table :sysadmins do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :sysadmins
  end
end
