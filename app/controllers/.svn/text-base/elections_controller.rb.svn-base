class ElectionsController < ApplicationController
  @timezones = ['AST', 'EDT', 'CDT', 'CST', 'MDT', 'PDT']
  # GET /elections
  # GET /elections.xml
  def index
    @elections = Election.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @elections }
    end
  end

  # GET /elections/1
  # GET /elections/1.xml
  def show
    @election = Election.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @election }
    end
  end

  # GET /elections/new
  # GET /elections/new.xml
  def new
    @election = Election.new
    @ballots = Ballot.find(:all)
    @groups = Group.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @election }
    end
  end

  # GET /elections/1/edit
  def edit
    @election = Election.find(params[:id])
  end

  # POST /elections
  # POST /elections.xml
  def create
    @election = Election.new(params[:election])

    respond_to do |format|
      if @election.save
        flash[:notice] = 'Election was successfully created.'
        format.html { redirect_to(@election) }
        format.xml  { render :xml => @election, :status => :created, :location => @election }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @election.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /elections/1
  # PUT /elections/1.xml
  def update
    @election = Election.find(params[:id])

    respond_to do |format|
      if @election.update_attributes(params[:election])
        flash[:notice] = 'Election was successfully updated.'
        format.html { redirect_to(@election) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @election.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /elections/1
  # DELETE /elections/1.xml
  def destroy
    @election = Election.find(params[:id])
    @election.destroy

    respond_to do |format|
      format.html { redirect_to(elections_url) }
      format.xml  { head :ok }
    end
  end
end
