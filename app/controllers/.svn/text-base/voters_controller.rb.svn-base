class VotersController < ApplicationController
  before_filter :login_required
  require_role ["sysadmin", "voter", "executive"] 
  layout "application"

  # GET /voters
  # GET /voters.xml
  def index
#    @ballots = Ballots.find(:all)
    @voters = Voter.find(:all, :order=>"name")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @voters }
    end
  end

  # GET /voters/1
  # GET /voters/1.xml
  def show
    @voter = Voter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @voter }
    end
  end

  # GET /voters/new
  # GET /voters/new.xml
  def new
    @voter = Voter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @voter }
    end
  end

  # GET /voters/1/edit
  def edit
    @voter = Voter.find(params[:id])
  end

  # POST /voters
  # POST /voters.xml
  def create
    @voter = Voter.new(params[:voter])

    respond_to do |format|
      if @voter.save
        flash[:notice] = 'Voter was successfully created.'
        format.html { redirect_to(@voter) }
        format.xml  { render :xml => @voter, :status => :created, :location => @voter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @voter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /voters/1
  # PUT /voters/1.xml
  def update
    @voter = Voter.find(params[:id])

    respond_to do |format|
      if @voter.update_attributes(params[:voter])
        flash[:notice] = 'Voter was successfully updated.'
        format.html { redirect_to(@voter) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @voter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /voters/1
  # DELETE /voters/1.xml
  def destroy
    @voter = Voter.find(params[:id])
    @voter.destroy

    respond_to do |format|
      format.html { redirect_to(voters_url) }
      format.xml  { head :ok }
    end
  end
  
  # Corresponds to a HUD for the Voter. Displaying the most recent items in
  # the relevant categories the Voter might be interested in.
  def dashboard
	  @voter = findVoter()
	  @announcements = findAnnouncements()
	  @myElections = findElections()
  end
  
  # Determines the current voter
  def findVoter
	  Voter.find_by_user_id(current_user.id)
  end
  
  # Determines the eligible announcements
  def findAnnouncements
	  Announcement.find( :all, :order => 'created_at DESC', :limit => 5 )
  end
  
  # Determines the eligible elections
  def findElections
	  @myGroup = Group.find( :first, :conditions=>['group_code=?', current_user.group_code])
	  Election.find( :all, :conditions=>['group_id=?',@myGroup.id], :limit=>10)
  end
  
  # Show the elections the Voter is applicable for
  def myElection
	  @voter = findVoter()
	  @myGroup = Group.find( :first, :conditions=>['group_code=?', current_user.group_code])
	  Election.find( :all, :conditions=>['group_id=?',@myGroup.id])
  end
end
