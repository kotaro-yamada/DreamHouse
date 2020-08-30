require 'test_helper'

class Buyer::PurchaseOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get buyer_purchase_offers_show_url
    assert_response :success
  end

  test "should get new" do
    get buyer_purchase_offers_new_url
    assert_response :success
  end

  test "should get create" do
    get buyer_purchase_offers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get buyer_purchase_offers_destroy_url
    assert_response :success
  end

end
