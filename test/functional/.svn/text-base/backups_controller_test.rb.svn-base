require 'test_helper'

class BackupsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:backups)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_backup
    assert_difference('Backup.count') do
      post :create, :backup => { }
    end

    assert_redirected_to backup_path(assigns(:backup))
  end

  def test_should_show_backup
    get :show, :id => backups(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => backups(:one).id
    assert_response :success
  end

  def test_should_update_backup
    put :update, :id => backups(:one).id, :backup => { }
    assert_redirected_to backup_path(assigns(:backup))
  end

  def test_should_destroy_backup
    assert_difference('Backup.count', -1) do
      delete :destroy, :id => backups(:one).id
    end

    assert_redirected_to backups_path
  end
end
