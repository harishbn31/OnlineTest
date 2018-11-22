require 'test_helper'

class TakeTestControllerTest < ActionDispatch::IntegrationTest
  test "should get quiz_start" do
    get take_test_quiz_start_url
    assert_response :success
  end

end
