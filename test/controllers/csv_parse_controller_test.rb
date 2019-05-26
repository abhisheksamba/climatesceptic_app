require 'test_helper'

class CsvParseControllerTest < ActionDispatch::IntegrationTest
  test "should get rake" do
    get csv_parse_rake_url
    assert_response :success
  end

end
