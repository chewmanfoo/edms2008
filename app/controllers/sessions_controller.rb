# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController
  # render new.html.erb

  def new
  end

  def create
    self.current_user = User.authenticate(params[:login], params[:password])
    if logged_in?
      if params[:remember_me] == "1"
        current_user.remember_me unless current_user.remember_token?
        cookies[:auth_token] = { :value => self.current_user.remember_token , :expires => self.current_user.remember_token_expires_at }
      end
      # log the login
      logger.info '======> successful login: ' + params[:login]
      redirect_back_or_default('/')
      flash[:notice] = "Logged in successfully"
    else
      # log the failed login
      logger.info '=====> failed login: ' + params[:login]
      flash.now[:error] = "Authentication failed."       
      render :action => 'new'
    end
  end

  def destroy
    self.current_user.forget_me if logged_in?
    cookies.delete :auth_token
    reset_session
    flash[:notice] = "You have been logged out."
    redirect_back_or_default('/')
  end
end
