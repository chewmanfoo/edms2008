require 'test_helper'

class LogEntriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:log_entries)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_log_entry
    assert_difference('LogEntry.count') do
      post :create, :log_entry => { }
    end

    assert_redirected_to log_entry_path(assigns(:log_entry))
  end

  def test_should_show_log_entry
    get :show, :id => log_entries(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => log_entries(:one).id
    assert_response :success
  end

  def test_should_update_log_entry
    put :update, :id => log_entries(:one).id, :log_entry => { }
    assert_redirected_to log_entry_path(assigns(:log_entry))
  end

  def test_should_destroy_log_entry
    assert_difference('LogEntry.count', -1) do
      delete :destroy, :id => log_entries(:one).id
    end

    assert_redirected_to log_entries_path
  end
end
