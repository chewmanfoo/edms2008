class Ballot < ActiveRecord::Base
  has_and_belongs_to_many :issues
  has_and_belongs_to_many :candidates
  belongs_to :election

  def candidate_attributes=(candidate_attributes)
    candidate_attributes.each do |attributes|
      candidates.build(attributes)
    end
  end

  def issue_attributes=(issue_attributes)
    issue_attributes.each do |attributes|
      issues.build(attributes)
    end
  end
end
