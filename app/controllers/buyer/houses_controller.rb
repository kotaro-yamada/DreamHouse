class Buyer::HousesController < ApplicationController
  def index
  	@houses = House.all
  end

  def show
  	@house = House.find(params[:id])
  	#geocoder
  	#if文を使い、徐々に検索を緩める。
  	full_address = @house.prefecture
  	@results = Geocoder.search(full_address)
  end
end