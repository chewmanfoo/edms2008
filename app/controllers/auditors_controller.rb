class AuditorsController < ApplicationController
  before_filter :login_required
  require_role ["sysadmin", "auditor"]
  layout "application"

  # GET /auditors
  # GET /auditors.xml
  def index
    @auditors = Auditor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auditors }
    end
  end

  # GET /auditors/1
  # GET /auditors/1.xml
  def show
    @auditor = Auditor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @auditor }
    end
  end

  # GET /auditors/new
  # GET /auditors/new.xml
  def new
    @auditor = Auditor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @auditor }
    end
  end

  # GET /auditors/1/edit
  def edit
    @auditor = Auditor.find(params[:id])
  end

  # POST /auditors
  # POST /auditors.xml
  def create
    @auditor = Auditor.new(params[:auditor])

    respond_to do |format|
      if @auditor.save
        flash[:notice] = 'Auditor was successfully created.'
        format.html { redirect_to(@auditor) }
        format.xml  { render :xml => @auditor, :status => :created, :location => @auditor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @auditor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /auditors/1
  # PUT /auditors/1.xml
  def update
    @auditor = Auditor.find(params[:id])

    respond_to do |format|
      if @auditor.update_attributes(params[:auditor])
        flash[:notice] = 'Auditor was successfully updated.'
        format.html { redirect_to(@auditor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @auditor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /auditors/1
  # DELETE /auditors/1.xml
  def destroy
    @auditor = Auditor.find(params[:id])
    @auditor.destroy

    respond_to do |format|
      format.html { redirect_to(auditors_url) }
      format.xml  { head :ok }
    end
  end
end
