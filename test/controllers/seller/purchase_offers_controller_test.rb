require 'test_helper'

class Seller::PurchaseOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seller_purchase_offers_index_url
    assert_response :success
  end

  test "should get show" do
    get seller_purchase_offers_show_url
    assert_response :success
  end

end
