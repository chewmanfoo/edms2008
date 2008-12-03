class BackupsController < ApplicationController
  # GET /backups
  # GET /backups.xml
  def index
    @backups = Backup.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @backups }
    end
  end

  # GET /backups/1
  # GET /backups/1.xml
  def show
    @backup = Backup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @backup }
    end
  end

  # GET /backups/new
  # GET /backups/new.xml
  def new
    @backup = Backup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @backup }
    end
  end

  # GET /backups/1/edit
  def edit
    @backup = Backup.find(params[:id])
  end

  # POST /backups
  # POST /backups.xml
  def create
    @backup = Backup.new(params[:backup])

    respond_to do |format|
      if @backup.save
        flash[:notice] = 'Backup was successfully created.'
        format.html { redirect_to(@backup) }
        format.xml  { render :xml => @backup, :status => :created, :location => @backup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @backup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /backups/1
  # PUT /backups/1.xml
  def update
    @backup = Backup.find(params[:id])

    respond_to do |format|
      if @backup.update_attributes(params[:backup])
        flash[:notice] = 'Backup was successfully updated.'
        format.html { redirect_to(@backup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @backup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /backups/1
  # DELETE /backups/1.xml
  def destroy
    @backup = Backup.find(params[:id])
    @backup.destroy

    respond_to do |format|
      format.html { redirect_to(backups_url) }
      format.xml  { head :ok }
    end
  end
end
