require 'test_helper'

class EconRecessionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get econ_recession_index_url
    assert_response :success
  end

  test "should get import" do
    get econ_recession_import_url
    assert_response :success
  end

end
