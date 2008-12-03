class LogagentsController < ApplicationController
  # GET /logagents
  # GET /logagents.xml
  def index
    @logagents = Logagent.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @logagents }
    end
  end

  # GET /logagents/1
  # GET /logagents/1.xml
  def show
    @logagent = Logagent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @logagent }
    end
  end

  # GET /logagents/new
  # GET /logagents/new.xml
  def new
    @logagent = Logagent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @logagent }
    end
  end

  # GET /logagents/1/edit
  def edit
    @logagent = Logagent.find(params[:id])
  end

  # POST /logagents
  # POST /logagents.xml
  def create
    @logagent = Logagent.new(params[:logagent])

    respond_to do |format|
      if @logagent.save
        flash[:notice] = 'Logagent was successfully created.'
        format.html { redirect_to(@logagent) }
        format.xml  { render :xml => @logagent, :status => :created, :location => @logagent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @logagent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /logagents/1
  # PUT /logagents/1.xml
  def update
    @logagent = Logagent.find(params[:id])

    respond_to do |format|
      if @logagent.update_attributes(params[:logagent])
        flash[:notice] = 'Logagent was successfully updated.'
        format.html { redirect_to(@logagent) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @logagent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logagents/1
  # DELETE /logagents/1.xml
  def destroy
    @logagent = Logagent.find(params[:id])
    @logagent.destroy

    respond_to do |format|
      format.html { redirect_to(logagents_url) }
      format.xml  { head :ok }
    end
  end
end
