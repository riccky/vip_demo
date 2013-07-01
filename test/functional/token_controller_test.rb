require 'test_helper'

class TokenControllerTest < ActionController::TestCase
  test "should get validate" do
    get :validate
    assert_response :success
  end

end
