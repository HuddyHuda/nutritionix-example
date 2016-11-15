require 'test_helper'

class ExternalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get externals_index_url
    assert_response :success
  end

end
