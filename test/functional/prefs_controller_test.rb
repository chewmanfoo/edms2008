require 'test_helper'

class PrefsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:prefs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_pref
    assert_difference('Pref.count') do
      post :create, :pref => { }
    end

    assert_redirected_to pref_path(assigns(:pref))
  end

  def test_should_show_pref
    get :show, :id => prefs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => prefs(:one).id
    assert_response :success
  end

  def test_should_update_pref
    put :update, :id => prefs(:one).id, :pref => { }
    assert_redirected_to pref_path(assigns(:pref))
  end

  def test_should_destroy_pref
    assert_difference('Pref.count', -1) do
      delete :destroy, :id => prefs(:one).id
    end

    assert_redirected_to prefs_path
  end
end
