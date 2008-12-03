class PrefsController < ApplicationController
  # GET /prefs
  # GET /prefs.xml
  def index
    @prefs = Pref.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prefs }
    end
  end

  # GET /prefs/1
  # GET /prefs/1.xml
  def show
    @pref = Pref.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pref }
    end
  end

  # GET /prefs/new
  # GET /prefs/new.xml
  def new
    @pref = Pref.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pref }
    end
  end

  # GET /prefs/1/edit
  def edit
    @pref = Pref.find(params[:id])
  end

  # POST /prefs
  # POST /prefs.xml
  def create
    @pref = Pref.new(params[:pref])

    respond_to do |format|
      if @pref.save
        flash[:notice] = 'Pref was successfully created.'
        format.html { redirect_to(@pref) }
        format.xml  { render :xml => @pref, :status => :created, :location => @pref }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pref.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prefs/1
  # PUT /prefs/1.xml
  def update
    @pref = Pref.find(params[:id])

    respond_to do |format|
      if @pref.update_attributes(params[:pref])
        flash[:notice] = 'Pref was successfully updated.'
        format.html { redirect_to(@pref) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pref.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prefs/1
  # DELETE /prefs/1.xml
  def destroy
    @pref = Pref.find(params[:id])
    @pref.destroy

    respond_to do |format|
      format.html { redirect_to(prefs_url) }
      format.xml  { head :ok }
    end
  end
end
