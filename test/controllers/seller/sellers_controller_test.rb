require 'test_helper'

class Seller::SellersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get seller_sellers_show_url
    assert_response :success
  end

  test "should get edit" do
    get seller_sellers_edit_url
    assert_response :success
  end

  test "should get update" do
    get seller_sellers_update_url
    assert_response :success
  end

end
