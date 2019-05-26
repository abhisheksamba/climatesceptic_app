require 'test_helper'

class ExtweatherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get extweather_index_url
    assert_response :success
  end

  test "should get import" do
    get extweather_import_url
    assert_response :success
  end

end
