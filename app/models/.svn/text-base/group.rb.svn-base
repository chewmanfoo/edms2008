class Group < ActiveRecord::Base
  validates_uniqueness_of :name, :group_code
  belongs_to :role
  has_one :election 
end
