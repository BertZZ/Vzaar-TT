require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { Address_1: @user.Address_1, Address_2: @user.Address_2, Email_Address: @user.Email_Address, Town: @user.Town, Username: @user.Username, county: @user.county, encrypted_password: @user.encrypted_password, postcode: @user.postcode } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { Address_1: @user.Address_1, Address_2: @user.Address_2, Email_Address: @user.Email_Address, Town: @user.Town, Username: @user.Username, county: @user.county, encrypted_password: @user.encrypted_password, postcode: @user.postcode } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
