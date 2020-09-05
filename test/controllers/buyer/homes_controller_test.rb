require 'test_helper'

class Buyer::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get buyer_homes_home_url
    assert_response :success
  end

end
