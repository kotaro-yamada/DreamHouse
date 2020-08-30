require 'test_helper'

class Buyer::VisitOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get buyer_visit_offers_show_url
    assert_response :success
  end

  test "should get new" do
    get buyer_visit_offers_new_url
    assert_response :success
  end

  test "should get create" do
    get buyer_visit_offers_create_url
    assert_response :success
  end

  test "should get update" do
    get buyer_visit_offers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get buyer_visit_offers_destroy_url
    assert_response :success
  end

end
