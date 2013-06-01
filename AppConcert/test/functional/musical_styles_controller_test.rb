require 'test_helper'

class MusicalStylesControllerTest < ActionController::TestCase
  setup do
    @musical_style = musical_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musical_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musical_style" do
    assert_difference('MusicalStyle.count') do
      post :create, musical_style: { name: @musical_style.name }
    end

    assert_redirected_to musical_style_path(assigns(:musical_style))
  end

  test "should show musical_style" do
    get :show, id: @musical_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musical_style
    assert_response :success
  end

  test "should update musical_style" do
    put :update, id: @musical_style, musical_style: { name: @musical_style.name }
    assert_redirected_to musical_style_path(assigns(:musical_style))
  end

  test "should destroy musical_style" do
    assert_difference('MusicalStyle.count', -1) do
      delete :destroy, id: @musical_style
    end

    assert_redirected_to musical_styles_path
  end
end
