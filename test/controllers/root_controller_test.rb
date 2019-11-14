require 'test_helper'

class RootControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get root_new_url
    assert_response :success
  end

end
