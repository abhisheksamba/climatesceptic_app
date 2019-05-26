require 'test_helper'

class AdvocacyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advocacy_index_url
    assert_response :success
  end

  test "should get import" do
    get advocacy_import_url
    assert_response :success
  end

end
