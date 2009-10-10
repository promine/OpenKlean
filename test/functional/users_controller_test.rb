require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user =>{:name=>"Anderson Mesquita", :password_confirmation=>"asdfasdf", :password=>"asdfasdf", :username=>"andersonvom", :email=>"andersonvom@gmail.com"}
    end

    assert_redirected_to root_path
  end

  test "should show user" do
    get :show, :id => users(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    #TODO
#    get :edit, :id => users(:one).to_param
#    assert_response :success
  end

  test "should update user" do
    #TODO
#    put :update, :id => users(:one).to_param, :user =>{:name=>"Anderson", :password_confirmation=>"asdfasdf", :password=>"asdfasdf", :username=>"andersonvom", :email=>"andersonvom@gmail.com"}
#    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
#    assert_difference('User.count', -1) do
    delete :destroy, :id => users(:one).to_param
#    end
    assert_redirected_to root_path
  end
end
