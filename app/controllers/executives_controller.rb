class ExecutivesController < ApplicationController
  before_filter :login_required
  require_role ["sysadmin", "executive"]
  layout "application"

  # GET /executives
  # GET /executives.xml
  def index
    @executives = Executive.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @executives }
    end
  end

  # GET /executives/1
  # GET /executives/1.xml
  def show
    @executive = Executive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @executive }
    end
  end

  # GET /executives/new
  # GET /executives/new.xml
  def new
    @executive = Executive.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @executive }
    end
  end

  # GET /executives/1/edit
  def edit
    @executive = Executive.find(params[:id])
  end

  # POST /executives
  # POST /executives.xml
  def create
    @executive = Executive.new(params[:executive])

    respond_to do |format|
      if @executive.save
        flash[:notice] = 'Executive was successfully created.'
        format.html { redirect_to(@executive) }
        format.xml  { render :xml => @executive, :status => :created, :location => @executive }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @executive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /executives/1
  # PUT /executives/1.xml
  def update
    @executive = Executive.find(params[:id])

    respond_to do |format|
      if @executive.update_attributes(params[:executive])
        flash[:notice] = 'Executive was successfully updated.'
        format.html { redirect_to(@executive) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @executive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /executives/1
  # DELETE /executives/1.xml
  def destroy
    @executive = Executive.find(params[:id])
    @executive.destroy

    respond_to do |format|
      format.html { redirect_to(executives_url) }
      format.xml  { head :ok }
    end
  end
end
