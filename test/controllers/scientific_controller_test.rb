require 'test_helper'

class ScientificControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scientific_index_url
    assert_response :success
  end

  test "should get import" do
    get scientific_import_url
    assert_response :success
  end

end
