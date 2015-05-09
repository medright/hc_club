require 'test_helper'

class CampLogsControllerTest < ActionController::TestCase
  setup do
    @camp_log = camp_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camp_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camp_log" do
    assert_difference('CampLog.count') do
      post :create, camp_log: { log: @camp_log.log, picture: @camp_log.picture, registration_id: @camp_log.registration_id, user_id: @camp_log.user_id }
    end

    assert_redirected_to camp_log_path(assigns(:camp_log))
  end

  test "should show camp_log" do
    get :show, id: @camp_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camp_log
    assert_response :success
  end

  test "should update camp_log" do
    patch :update, id: @camp_log, camp_log: { log: @camp_log.log, picture: @camp_log.picture, registration_id: @camp_log.registration_id, user_id: @camp_log.user_id }
    assert_redirected_to camp_log_path(assigns(:camp_log))
  end

  test "should destroy camp_log" do
    assert_difference('CampLog.count', -1) do
      delete :destroy, id: @camp_log
    end

    assert_redirected_to camp_logs_path
  end
end
