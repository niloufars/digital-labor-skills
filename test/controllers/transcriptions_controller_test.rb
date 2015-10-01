require 'test_helper'

class TranscriptionsControllerTest < ActionController::TestCase
  setup do
    @transcription = transcriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transcriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transcription" do
    assert_difference('Transcription.count') do
      post :create, transcription: { data: @transcription.data, user_id: @transcription.user_id }
    end

    assert_redirected_to transcription_path(assigns(:transcription))
  end

  test "should show transcription" do
    get :show, id: @transcription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transcription
    assert_response :success
  end

  test "should update transcription" do
    patch :update, id: @transcription, transcription: { data: @transcription.data, user_id: @transcription.user_id }
    assert_redirected_to transcription_path(assigns(:transcription))
  end

  test "should destroy transcription" do
    assert_difference('Transcription.count', -1) do
      delete :destroy, id: @transcription
    end

    assert_redirected_to transcriptions_path
  end
end
