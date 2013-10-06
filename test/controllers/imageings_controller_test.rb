require 'test_helper'

class ImageingsControllerTest < ActionController::TestCase
  setup do
    @imageing = imageings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imageings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imageing" do
    assert_difference('Imageing.count') do
      post :create, imageing: { parent: @imageing.parent, parent_id: @imageing.parent_id, status: @imageing.status }
    end

    assert_redirected_to imageing_path(assigns(:imageing))
  end

  test "should show imageing" do
    get :show, id: @imageing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imageing
    assert_response :success
  end

  test "should update imageing" do
    patch :update, id: @imageing, imageing: { parent: @imageing.parent, parent_id: @imageing.parent_id, status: @imageing.status }
    assert_redirected_to imageing_path(assigns(:imageing))
  end

  test "should destroy imageing" do
    assert_difference('Imageing.count', -1) do
      delete :destroy, id: @imageing
    end

    assert_redirected_to imageings_path
  end
end
