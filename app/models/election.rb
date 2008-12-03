class Election < ActiveRecord::Base
  has_one :ballot
  belongs_to :group
end
