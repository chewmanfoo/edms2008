class SysadminsController < ApplicationController
  # GET /sysadmins
  # GET /sysadmins.xml
  def index
    @sysadmins = Sysadmin.find(:all)
    @users = User.find(:all)
    @voters = Voter.find(:all)
    @executives = Executive.find(:all)
    @reporters = Reporter.find(:all)
    @auditors = Auditor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sysadmins }
    end
  end

  # GET /sysadmins/1
  # GET /sysadmins/1.xml
  def show
    @sysadmin = Sysadmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sysadmin }
    end
  end

  # GET /sysadmins/new
  # GET /sysadmins/new.xml
  def new
    @sysadmin = Sysadmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sysadmin }
    end
  end

  # GET /sysadmins/1/edit
  def edit
    @sysadmin = Sysadmin.find(params[:id])
  end

  # POST /sysadmins
  # POST /sysadmins.xml
  def create
    @sysadmin = Sysadmin.new(params[:sysadmin])

    respond_to do |format|
      if @sysadmin.save
        flash[:notice] = 'Sysadmin was successfully created.'
        format.html { redirect_to(@sysadmin) }
        format.xml  { render :xml => @sysadmin, :status => :created, :location => @sysadmin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sysadmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sysadmins/1
  # PUT /sysadmins/1.xml
  def update
    @sysadmin = Sysadmin.find(params[:id])

    respond_to do |format|
      if @sysadmin.update_attributes(params[:sysadmin])
        flash[:notice] = 'Sysadmin was successfully updated.'
        format.html { redirect_to(@sysadmin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sysadmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sysadmins/1
  # DELETE /sysadmins/1.xml
  def destroy
    @sysadmin = Sysadmin.find(params[:id])
    @sysadmin.destroy

    respond_to do |format|
      format.html { redirect_to(sysadmins_url) }
      format.xml  { head :ok }
    end
  end
end
