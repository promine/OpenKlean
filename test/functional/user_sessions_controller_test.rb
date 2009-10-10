require 'test_helper'

class UserSessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:user_session)
  end

  test "should create session" do
    #assert_redirected_to home_path
  end

  test "should destroy user" do
    #assert_redirected_to root_path
  end
end
