require 'test_helper'

class LogagentsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:logagents)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_logagent
    assert_difference('Logagent.count') do
      post :create, :logagent => { }
    end

    assert_redirected_to logagent_path(assigns(:logagent))
  end

  def test_should_show_logagent
    get :show, :id => logagents(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => logagents(:one).id
    assert_response :success
  end

  def test_should_update_logagent
    put :update, :id => logagents(:one).id, :logagent => { }
    assert_redirected_to logagent_path(assigns(:logagent))
  end

  def test_should_destroy_logagent
    assert_difference('Logagent.count', -1) do
      delete :destroy, :id => logagents(:one).id
    end

    assert_redirected_to logagents_path
  end
end
