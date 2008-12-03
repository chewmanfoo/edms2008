module BallotsHelper
  def add_candidate_link(name)
    link_to_function name do |page|
    page.insert_html :bottom, :candidates,
                     :partial => 'candidate', :object => Candidate.new
    end
  end

  def add_issue_link(name)
    link_to_function name do |page|
    page.insert_html :bottom, :issues,
                     :partial => 'issue', :object => Issue.new
    end
  end

end
