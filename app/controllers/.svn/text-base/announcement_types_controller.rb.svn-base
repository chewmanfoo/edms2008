class AnnouncementTypesController < ApplicationController
  # GET /announcement_types
  # GET /announcement_types.xml
  def index
    @announcement_types = AnnouncementType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @announcement_types }
    end
  end

  # GET /announcement_types/1
  # GET /announcement_types/1.xml
  def show
    @announcement_type = AnnouncementType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @announcement_type }
    end
  end

  # GET /announcement_types/new
  # GET /announcement_types/new.xml
  def new
    @announcement_type = AnnouncementType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @announcement_type }
    end
  end

  # GET /announcement_types/1/edit
  def edit
    @announcement_type = AnnouncementType.find(params[:id])
  end

  # POST /announcement_types
  # POST /announcement_types.xml
  def create
    @announcement_type = AnnouncementType.new(params[:announcement_type])

    respond_to do |format|
      if @announcement_type.save
        flash[:notice] = 'AnnouncementType was successfully created.'
        format.html { redirect_to(@announcement_type) }
        format.xml  { render :xml => @announcement_type, :status => :created, :location => @announcement_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @announcement_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /announcement_types/1
  # PUT /announcement_types/1.xml
  def update
    @announcement_type = AnnouncementType.find(params[:id])

    respond_to do |format|
      if @announcement_type.update_attributes(params[:announcement_type])
        flash[:notice] = 'AnnouncementType was successfully updated.'
        format.html { redirect_to(@announcement_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @announcement_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /announcement_types/1
  # DELETE /announcement_types/1.xml
  def destroy
    @announcement_type = AnnouncementType.find(params[:id])
    @announcement_type.destroy

    respond_to do |format|
      format.html { redirect_to(announcement_types_url) }
      format.xml  { head :ok }
    end
  end
end
