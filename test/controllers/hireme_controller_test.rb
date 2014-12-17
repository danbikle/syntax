require 'test_helper'

class HiremeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
