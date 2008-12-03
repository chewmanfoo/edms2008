class UsersController < ApplicationController
  # render new.rhtml
  def new
    @groups = Group.find(:all)
    @user = User.new
  end

  def find_role(group_code)
    @group = Group.find_by_group_code(group_code)
    @group.role.name if @group
  end

  def create
    cookies.delete :auth_token
    # protects against session fixation attacks, wreaks havoc with 
    # request forgery protection.
    # uncomment at your own risk
    # reset_session
    @user = User.new(params[:user])
    @group = Group.find_by_group_code(params[:user][:group_code])
    @user.group_id = @group.id if @group
    address = Address.new(params[:address])
    address.save
    @user.address = address
    @user.save
    logger.info '======> user group code is: ' + params[:user][:group_code]    
    if (find_role(@user.group_code) == 'voter')
      logger.info '======> user is a voter!'
      @voter = Voter.new :user_id => @user.id
      @voter.save
      @role = Role.find(:first, :conditions => ['name = "voter"'])
      @role_user = RolesUsers.new :user_id => @user.id, :role_id => @role.id
      @role_user.save
    elsif (find_role(@user.group_code) == 'executive')
      logger.info '======> user is a executive!'
      @executive = Executive.new :user_id => @user.id
      @executive.save
      @role = Role.find(:first, :conditions => ['name = "executive"'])
      @role_user = RolesUsers.new :user_id => @user.id, :role_id => @role.id
      @role_user.save
    end

    if @user.errors.empty?
      self.current_user = @user
      redirect_back_or_default('/')
      flash[:notice] = "Thanks for signing up!"
    else
      render :action => 'new'
    end
  end

  def activate
    self.current_user = params[:activation_code].blank? ? false : User.find_by_activation_code(params[:activation_code])
    if logged_in? && !current_user.active?
      current_user.activate
      flash[:notice] = "Signup complete!"
    end
    redirect_back_or_default('/')
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_back_or_default('/')

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  #
  # Change user passowrd
  def change_password
  end
    
  #
  # Change user passowrd
  def change_password_update
    if User.authenticate(current_user.login, params[:old_password])
      if ((params[:password] == params[:password_confirmation]) && !params[:password_confirmation].blank?)
        current_user.password_confirmation = params[:password_confirmation]
        current_user.password = params[:password]
                
        if current_user.save!
          flash[:notice] = "Password successfully updated"
          redirect_to change_password_path
        else
          flash[:alert] = "Password not changed"
          render :action => 'change_password'
        end
                
      else
        flash[:alert] = "New Password mismatch" 
        render :action => 'change_password'
      end
    else
      flash[:alert] = "Old password incorrect" 
      render :action => 'change_password'
    end
  end

end
