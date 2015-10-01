require 'test_helper'

class TrascriptsControllerTest < ActionController::TestCase
  setup do
    @trascript = trascripts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trascripts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trascript" do
    assert_difference('Trascript.count') do
      post :create, trascript: { content: @trascript.content, user_id: @trascript.user_id }
    end

    assert_redirected_to trascript_path(assigns(:trascript))
  end

  test "should show trascript" do
    get :show, id: @trascript
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trascript
    assert_response :success
  end

  test "should update trascript" do
    patch :update, id: @trascript, trascript: { content: @trascript.content, user_id: @trascript.user_id }
    assert_redirected_to trascript_path(assigns(:trascript))
  end

  test "should destroy trascript" do
    assert_difference('Trascript.count', -1) do
      delete :destroy, id: @trascript
    end

    assert_redirected_to trascripts_path
  end
end
