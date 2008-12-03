require 'test_helper'

class InspectionsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:inspections)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_inspection
    assert_difference('Inspection.count') do
      post :create, :inspection => { }
    end

    assert_redirected_to inspection_path(assigns(:inspection))
  end

  def test_should_show_inspection
    get :show, :id => inspections(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => inspections(:one).id
    assert_response :success
  end

  def test_should_update_inspection
    put :update, :id => inspections(:one).id, :inspection => { }
    assert_redirected_to inspection_path(assigns(:inspection))
  end

  def test_should_destroy_inspection
    assert_difference('Inspection.count', -1) do
      delete :destroy, :id => inspections(:one).id
    end

    assert_redirected_to inspections_path
  end
end
