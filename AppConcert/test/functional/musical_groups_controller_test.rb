require 'test_helper'

class MusicalGroupsControllerTest < ActionController::TestCase
  setup do
    @musical_group = musical_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musical_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musical_group" do
    assert_difference('MusicalGroup.count') do
      post :create, musical_group: { imagen: @musical_group.imagen, musical_style_id: @musical_group.musical_style_id, name: @musical_group.name }
    end

    assert_redirected_to musical_group_path(assigns(:musical_group))
  end

  test "should show musical_group" do
    get :show, id: @musical_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musical_group
    assert_response :success
  end

  test "should update musical_group" do
    put :update, id: @musical_group, musical_group: { imagen: @musical_group.imagen, musical_style_id: @musical_group.musical_style_id, name: @musical_group.name }
    assert_redirected_to musical_group_path(assigns(:musical_group))
  end

  test "should destroy musical_group" do
    assert_difference('MusicalGroup.count', -1) do
      delete :destroy, id: @musical_group
    end

    assert_redirected_to musical_groups_path
  end
end
