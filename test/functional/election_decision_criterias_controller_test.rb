require 'test_helper'

class ElectionDecisionCriteriasControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:election_decision_criterias)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_election_decision_criteria
    assert_difference('ElectionDecisionCriteria.count') do
      post :create, :election_decision_criteria => { }
    end

    assert_redirected_to election_decision_criteria_path(assigns(:election_decision_criteria))
  end

  def test_should_show_election_decision_criteria
    get :show, :id => election_decision_criterias(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => election_decision_criterias(:one).id
    assert_response :success
  end

  def test_should_update_election_decision_criteria
    put :update, :id => election_decision_criterias(:one).id, :election_decision_criteria => { }
    assert_redirected_to election_decision_criteria_path(assigns(:election_decision_criteria))
  end

  def test_should_destroy_election_decision_criteria
    assert_difference('ElectionDecisionCriteria.count', -1) do
      delete :destroy, :id => election_decision_criterias(:one).id
    end

    assert_redirected_to election_decision_criterias_path
  end
end
