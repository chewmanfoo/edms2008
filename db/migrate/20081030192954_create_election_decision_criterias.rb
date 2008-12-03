class CreateElectionDecisionCriterias < ActiveRecord::Migration
  def self.up
    create_table :election_decision_criterias do |t|
      t.string :name
      t.integer :creator_id
      t.float :custom_percent
      t.boolean :majority
      t.boolean :plurality
      t.boolean :super_majority

      t.timestamps
    end
  end

  def self.down
    drop_table :election_decision_criterias
  end
end
