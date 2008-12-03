class CreatePrefs < ActiveRecord::Migration
  def self.up
    create_table :prefs do |t|
      t.integer :user_id
      t.string :preference_name
      t.integer :preference_selection

      t.timestamps
    end
  end

  def self.down
    drop_table :prefs
  end
end
