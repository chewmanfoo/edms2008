class HomeController < ApplicationController
  def index
    if logged_in?
      if current_user.has_role? 'voter'
        #redirect_to( voters_url )
		@cVoter = Voter.find( :first, :conditions => [ "user_id = ?", current_user.id] )
		redirect_to :controller => "voters", :action => "dashboard", :id => @cVoter.id
	  elsif current_user.has_role? 'executive'
		redirect_to( executives_url )
		#@cExec = Executive.find( :first, :conditions => [ "user_id = ?", current_user.id] )
        #redirect_to :controller => "executives", :action => "show", :id => @cExec.id
      end
    end
  end 
end
