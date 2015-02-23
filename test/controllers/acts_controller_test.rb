require 'test_helper'

class ActsControllerTest < ActionController::TestCase
  setup do
    @act = acts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create act" do
    assert_difference('Act.count') do
      post :create, act: { category: @act.category, date: @act.date, description: @act.description }
    end

    assert_redirected_to act_path(assigns(:act))
  end

  test "should show act" do
    get :show, id: @act
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @act
    assert_response :success
  end

  test "should update act" do
    patch :update, id: @act, act: { category: @act.category, date: @act.date, description: @act.description }
    assert_redirected_to act_path(assigns(:act))
  end

  test "should destroy act" do
    assert_difference('Act.count', -1) do
      delete :destroy, id: @act
    end

    assert_redirected_to acts_path
  end
end
