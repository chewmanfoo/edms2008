require 'test_helper'

class AnnouncementTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:announcement_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_announcement_type
    assert_difference('AnnouncementType.count') do
      post :create, :announcement_type => { }
    end

    assert_redirected_to announcement_type_path(assigns(:announcement_type))
  end

  def test_should_show_announcement_type
    get :show, :id => announcement_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => announcement_types(:one).id
    assert_response :success
  end

  def test_should_update_announcement_type
    put :update, :id => announcement_types(:one).id, :announcement_type => { }
    assert_redirected_to announcement_type_path(assigns(:announcement_type))
  end

  def test_should_destroy_announcement_type
    assert_difference('AnnouncementType.count', -1) do
      delete :destroy, :id => announcement_types(:one).id
    end

    assert_redirected_to announcement_types_path
  end
end
