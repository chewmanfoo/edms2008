require 'test_helper'

class ReportersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:reporters)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_reporter
    assert_difference('Reporter.count') do
      post :create, :reporter => { }
    end

    assert_redirected_to reporter_path(assigns(:reporter))
  end

  def test_should_show_reporter
    get :show, :id => reporters(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => reporters(:one).id
    assert_response :success
  end

  def test_should_update_reporter
    put :update, :id => reporters(:one).id, :reporter => { }
    assert_redirected_to reporter_path(assigns(:reporter))
  end

  def test_should_destroy_reporter
    assert_difference('Reporter.count', -1) do
      delete :destroy, :id => reporters(:one).id
    end

    assert_redirected_to reporters_path
  end
end
