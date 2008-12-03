class CreateGroupsUsersLink < ActiveRecord::Migration
  def self.up
     create_table :groups_users_link do |t|
        t.integer :group_id
        t.integer :user_id
    end
    
    create_table :ballots_groups_link do |t|
        t.integer :group_id
        t.integer :ballot_id
    end
    
    create_table :ballots_candidates_link do |t|
	t.integer :candidate_id
        t.integer :ballot_id
    end   
    
  end

  def self.down
	  drop_table :groups_users_link  
	  drop_table :ballots_candidates_link 	
	  drop_table :ballots_candidates_link 	  
  end
   
end
