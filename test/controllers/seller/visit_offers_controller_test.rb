require 'test_helper'

class Seller::VisitOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seller_visit_offers_index_url
    assert_response :success
  end

  test "should get show" do
    get seller_visit_offers_show_url
    assert_response :success
  end

end
