require 'test_helper'

class TopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get deny" do
    get :deny
    assert_response :success
  end

  test "should get recover" do
    get :recover
    assert_response :success
  end

end
