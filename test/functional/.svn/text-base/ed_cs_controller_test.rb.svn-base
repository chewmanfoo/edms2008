require 'test_helper'

class EDCsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:edcs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_edc
    assert_difference('EDC.count') do
      post :create, :edc => { }
    end

    assert_redirected_to edc_path(assigns(:edc))
  end

  def test_should_show_edc
    get :show, :id => edcs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => edcs(:one).id
    assert_response :success
  end

  def test_should_update_edc
    put :update, :id => edcs(:one).id, :edc => { }
    assert_redirected_to edc_path(assigns(:edc))
  end

  def test_should_destroy_edc
    assert_difference('EDC.count', -1) do
      delete :destroy, :id => edcs(:one).id
    end

    assert_redirected_to edcs_path
  end
end
