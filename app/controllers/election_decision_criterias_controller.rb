class ElectionDecisionCriteriasController < ApplicationController
  # GET /election_decision_criterias
  # GET /election_decision_criterias.xml
  def index
    @election_decision_criterias = ElectionDecisionCriteria.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @election_decision_criterias }
    end
  end

  # GET /election_decision_criterias/1
  # GET /election_decision_criterias/1.xml
  def show
    @election_decision_criteria = ElectionDecisionCriteria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @election_decision_criteria }
    end
  end

  # GET /election_decision_criterias/new
  # GET /election_decision_criterias/new.xml
  def new
    @election_decision_criteria = ElectionDecisionCriteria.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @election_decision_criteria }
    end
  end

  # GET /election_decision_criterias/1/edit
  def edit
    @election_decision_criteria = ElectionDecisionCriteria.find(params[:id])
  end

  # POST /election_decision_criterias
  # POST /election_decision_criterias.xml
  def create
    @election_decision_criteria = ElectionDecisionCriteria.new(params[:election_decision_criteria])

    respond_to do |format|
      if @election_decision_criteria.save
        flash[:notice] = 'ElectionDecisionCriteria was successfully created.'
        format.html { redirect_to(@election_decision_criteria) }
        format.xml  { render :xml => @election_decision_criteria, :status => :created, :location => @election_decision_criteria }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @election_decision_criteria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /election_decision_criterias/1
  # PUT /election_decision_criterias/1.xml
  def update
    @election_decision_criteria = ElectionDecisionCriteria.find(params[:id])

    respond_to do |format|
      if @election_decision_criteria.update_attributes(params[:election_decision_criteria])
        flash[:notice] = 'ElectionDecisionCriteria was successfully updated.'
        format.html { redirect_to(@election_decision_criteria) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @election_decision_criteria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /election_decision_criterias/1
  # DELETE /election_decision_criterias/1.xml
  def destroy
    @election_decision_criteria = ElectionDecisionCriteria.find(params[:id])
    @election_decision_criteria.destroy

    respond_to do |format|
      format.html { redirect_to(election_decision_criterias_url) }
      format.xml  { head :ok }
    end
  end
end
