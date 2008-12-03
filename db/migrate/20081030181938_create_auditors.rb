class CreateAuditors < ActiveRecord::Migration
  def self.up
    create_table :auditors do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :auditors
  end
end
