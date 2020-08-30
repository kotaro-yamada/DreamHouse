require 'test_helper'

class Seller::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get seller_homes_top_url
    assert_response :success
  end

  test "should get preparation" do
    get seller_homes_preparation_url
    assert_response :success
  end

  test "should get safety" do
    get seller_homes_safety_url
    assert_response :success
  end

  test "should get settlement" do
    get seller_homes_settlement_url
    assert_response :success
  end

end
