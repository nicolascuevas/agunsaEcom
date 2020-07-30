require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get warehouse" do
    get reports_warehouse_url
    assert_response :success
  end

end
