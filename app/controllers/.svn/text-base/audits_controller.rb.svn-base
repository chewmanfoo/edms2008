class AuditsController < ApplicationController
  # GET /audits
  # GET /audits.xml
  def index
    @audits = Audit.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @audits }
    end
  end

  # GET /audits/1
  # GET /audits/1.xml
  def show
    @audit = Audit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @audit }
    end
  end

  # GET /audits/new
  # GET /audits/new.xml
  def new
    @audit = Audit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @audit }
    end
  end

  # GET /audits/1/edit
  def edit
    @audit = Audit.find(params[:id])
  end

  # POST /audits
  # POST /audits.xml
  def create
    @audit = Audit.new(params[:audit])

    respond_to do |format|
      if @audit.save
        flash[:notice] = 'Audit was successfully created.'
        format.html { redirect_to(@audit) }
        format.xml  { render :xml => @audit, :status => :created, :location => @audit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @audit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /audits/1
  # PUT /audits/1.xml
  def update
    @audit = Audit.find(params[:id])

    respond_to do |format|
      if @audit.update_attributes(params[:audit])
        flash[:notice] = 'Audit was successfully updated.'
        format.html { redirect_to(@audit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @audit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /audits/1
  # DELETE /audits/1.xml
  def destroy
    @audit = Audit.find(params[:id])
    @audit.destroy

    respond_to do |format|
      format.html { redirect_to(audits_url) }
      format.xml  { head :ok }
    end
  end
end
