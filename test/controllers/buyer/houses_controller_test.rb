require 'test_helper'

class Buyer::HousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buyer_houses_index_url
    assert_response :success
  end

  test "should get show" do
    get buyer_houses_show_url
    assert_response :success
  end

end
