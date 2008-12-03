require 'test_helper'

class AuditorsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:auditors)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_auditor
    assert_difference('Auditor.count') do
      post :create, :auditor => { }
    end

    assert_redirected_to auditor_path(assigns(:auditor))
  end

  def test_should_show_auditor
    get :show, :id => auditors(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => auditors(:one).id
    assert_response :success
  end

  def test_should_update_auditor
    put :update, :id => auditors(:one).id, :auditor => { }
    assert_redirected_to auditor_path(assigns(:auditor))
  end

  def test_should_destroy_auditor
    assert_difference('Auditor.count', -1) do
      delete :destroy, :id => auditors(:one).id
    end

    assert_redirected_to auditors_path
  end
end
