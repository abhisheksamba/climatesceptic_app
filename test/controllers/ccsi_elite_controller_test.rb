require 'test_helper'

class CcsiEliteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ccsi_elite_index_url
    assert_response :success
  end

  test "should get import" do
    get ccsi_elite_import_url
    assert_response :success
  end

end
