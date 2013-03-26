require 'test_helper'

class GroupsValsControllerTest < ActionController::TestCase
  setup do
    @groups_val = groups_vals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups_vals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groups_val" do
    assert_difference('GroupsVal.count') do
      post :create, groups_val: @groups_val.attributes
    end

    assert_redirected_to groups_val_path(assigns(:groups_val))
  end

  test "should show groups_val" do
    get :show, id: @groups_val
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @groups_val
    assert_response :success
  end

  test "should update groups_val" do
    put :update, id: @groups_val, groups_val: @groups_val.attributes
    assert_redirected_to groups_val_path(assigns(:groups_val))
  end

  test "should destroy groups_val" do
    assert_difference('GroupsVal.count', -1) do
      delete :destroy, id: @groups_val
    end

    assert_redirected_to groups_vals_path
  end
end
