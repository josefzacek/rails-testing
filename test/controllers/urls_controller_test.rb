require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "should get get_params" do
    get :get_params
    assert_response :success
  end

end
