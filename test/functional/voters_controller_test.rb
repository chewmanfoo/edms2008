require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:voters)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_voter
    assert_difference('Voter.count') do
      post :create, :voter => { }
    end

    assert_redirected_to voter_path(assigns(:voter))
  end

  def test_should_show_voter
    get :show, :id => voters(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => voters(:one).id
    assert_response :success
  end

  def test_should_update_voter
    put :update, :id => voters(:one).id, :voter => { }
    assert_redirected_to voter_path(assigns(:voter))
  end

  def test_should_destroy_voter
    assert_difference('Voter.count', -1) do
      delete :destroy, :id => voters(:one).id
    end

    assert_redirected_to voters_path
  end
end
