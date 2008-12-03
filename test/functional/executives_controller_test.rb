require 'test_helper'

class ExecutivesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:executives)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_executive
    assert_difference('Executive.count') do
      post :create, :executive => { }
    end

    assert_redirected_to executive_path(assigns(:executive))
  end

  def test_should_show_executive
    get :show, :id => executives(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => executives(:one).id
    assert_response :success
  end

  def test_should_update_executive
    put :update, :id => executives(:one).id, :executive => { }
    assert_redirected_to executive_path(assigns(:executive))
  end

  def test_should_destroy_executive
    assert_difference('Executive.count', -1) do
      delete :destroy, :id => executives(:one).id
    end

    assert_redirected_to executives_path
  end
end
