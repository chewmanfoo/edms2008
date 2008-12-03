require 'test_helper'

class ElectionsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:elections)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_election
    assert_difference('Election.count') do
      post :create, :election => { }
    end

    assert_redirected_to election_path(assigns(:election))
  end

  def test_should_show_election
    get :show, :id => elections(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => elections(:one).id
    assert_response :success
  end

  def test_should_update_election
    put :update, :id => elections(:one).id, :election => { }
    assert_redirected_to election_path(assigns(:election))
  end

  def test_should_destroy_election
    assert_difference('Election.count', -1) do
      delete :destroy, :id => elections(:one).id
    end

    assert_redirected_to elections_path
  end
end
