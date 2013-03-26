require 'test_helper'

class GroupValsControllerTest < ActionController::TestCase
  setup do
    @group_val = group_vals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_vals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_val" do
    assert_difference('GroupVal.count') do
      post :create, group_val: @group_val.attributes
    end

    assert_redirected_to group_val_path(assigns(:group_val))
  end

  test "should show group_val" do
    get :show, id: @group_val
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_val
    assert_response :success
  end

  test "should update group_val" do
    put :update, id: @group_val, group_val: @group_val.attributes
    assert_redirected_to group_val_path(assigns(:group_val))
  end

  test "should destroy group_val" do
    assert_difference('GroupVal.count', -1) do
      delete :destroy, id: @group_val
    end

    assert_redirected_to group_vals_path
  end
end
