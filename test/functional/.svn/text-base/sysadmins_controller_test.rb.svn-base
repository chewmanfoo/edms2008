require 'test_helper'

class SysadminsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sysadmins)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sysadmin
    assert_difference('Sysadmin.count') do
      post :create, :sysadmin => { }
    end

    assert_redirected_to sysadmin_path(assigns(:sysadmin))
  end

  def test_should_show_sysadmin
    get :show, :id => sysadmins(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sysadmins(:one).id
    assert_response :success
  end

  def test_should_update_sysadmin
    put :update, :id => sysadmins(:one).id, :sysadmin => { }
    assert_redirected_to sysadmin_path(assigns(:sysadmin))
  end

  def test_should_destroy_sysadmin
    assert_difference('Sysadmin.count', -1) do
      delete :destroy, :id => sysadmins(:one).id
    end

    assert_redirected_to sysadmins_path
  end
end
