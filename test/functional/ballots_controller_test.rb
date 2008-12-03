require 'test_helper'

class BallotsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ballots)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ballot
    assert_difference('Ballot.count') do
      post :create, :ballot => { }
    end

    assert_redirected_to ballot_path(assigns(:ballot))
  end

  def test_should_show_ballot
    get :show, :id => ballots(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ballots(:one).id
    assert_response :success
  end

  def test_should_update_ballot
    put :update, :id => ballots(:one).id, :ballot => { }
    assert_redirected_to ballot_path(assigns(:ballot))
  end

  def test_should_destroy_ballot
    assert_difference('Ballot.count', -1) do
      delete :destroy, :id => ballots(:one).id
    end

    assert_redirected_to ballots_path
  end
end
