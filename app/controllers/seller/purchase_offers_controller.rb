class Seller::PurchaseOffersController < Seller::ApplicationController
  def index
  	@houses = Seller.houses.all
  end

  def show
  	@purchase_offer = PurchaseOffer.find(params[:id])
  	@house = @purchase_offer.house
  end
end
