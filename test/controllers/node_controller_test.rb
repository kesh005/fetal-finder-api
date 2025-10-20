require "test_helper"

class NodeControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get node_get_url
    assert_response :success
  end
end
