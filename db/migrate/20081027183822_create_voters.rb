class CreateVoters < ActiveRecord::Migration
  def self.up
    create_table :voters do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :login
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :voters
  end
end
