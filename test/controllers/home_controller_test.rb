require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get lib" do
    get home_lib_url
    assert_response :success
  end

  test "should get CCSI" do
    get home_CCSI_url
    assert_response :success
  end

  test "should get interact" do
    get home_interact_url
    assert_response :success
  end

end
