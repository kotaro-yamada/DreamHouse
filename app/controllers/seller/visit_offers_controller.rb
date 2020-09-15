class Seller::VisitOffersController < Seller::ApplicationController
  def index
  	@houses = current_seller.houses
  end

  def show
  	@purchase_offer = PurchaseOffer.find(params[:id])
  	@house = @purchase_offer.house
  end
end
