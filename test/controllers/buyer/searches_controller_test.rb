require 'test_helper'

class Buyer::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get buyer_searches_search_url
    assert_response :success
  end

end
