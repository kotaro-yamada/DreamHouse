require 'test_helper'

class Buyer::BuyersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get buyer_buyers_show_url
    assert_response :success
  end

  test "should get edit" do
    get buyer_buyers_edit_url
    assert_response :success
  end

  test "should get update" do
    get buyer_buyers_update_url
    assert_response :success
  end

end
