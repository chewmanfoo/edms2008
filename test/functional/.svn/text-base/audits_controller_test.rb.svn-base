require 'test_helper'

class AuditsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:audits)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_audit
    assert_difference('Audit.count') do
      post :create, :audit => { }
    end

    assert_redirected_to audit_path(assigns(:audit))
  end

  def test_should_show_audit
    get :show, :id => audits(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => audits(:one).id
    assert_response :success
  end

  def test_should_update_audit
    put :update, :id => audits(:one).id, :audit => { }
    assert_redirected_to audit_path(assigns(:audit))
  end

  def test_should_destroy_audit
    assert_difference('Audit.count', -1) do
      delete :destroy, :id => audits(:one).id
    end

    assert_redirected_to audits_path
  end
end
