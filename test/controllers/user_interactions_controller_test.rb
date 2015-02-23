require 'test_helper'

class UserInteractionsControllerTest < ActionController::TestCase
  setup do
    @user_interaction = user_interactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_interactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_interaction" do
    assert_difference('UserInteraction.count') do
      post :create, user_interaction: { owner: @user_interaction.owner }
    end

    assert_redirected_to user_interaction_path(assigns(:user_interaction))
  end

  test "should show user_interaction" do
    get :show, id: @user_interaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_interaction
    assert_response :success
  end

  test "should update user_interaction" do
    patch :update, id: @user_interaction, user_interaction: { owner: @user_interaction.owner }
    assert_redirected_to user_interaction_path(assigns(:user_interaction))
  end

  test "should destroy user_interaction" do
    assert_difference('UserInteraction.count', -1) do
      delete :destroy, id: @user_interaction
    end

    assert_redirected_to user_interactions_path
  end
end
