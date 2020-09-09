class Buyer::PurchaseOffersController < ApplicationController
  def show
  end

  def new
    @purchase_offer = PurchaseOffer.new
    @house = House.find(params[:house_id])
  end

  def confirm
    @purchase_offer = PurchaseOffer.new(purchase_offer_params)
    @house = House.find(params[:house_id])
    if params[:select_profile] == '0'
      @purchase_offer.house_id = @house.id
      @purchase_offer.price = @house.price
      @purchase_offer.zip_code = current_buyer.zip_code
      @purchase_offer.address = current_buyer.address
      @purchase_offer.phone_number = current_buyer.phone_number
      @purchase_offer.first_name_kanji = current_buyer.first_name_kanji
      @purchase_offer.last_name_kanji = current_buyer.last_name_kanji
      @purchase_offer.first_name_kana = current_buyer.first_name_kana
      @purchase_offer.last_name_kana = current_buyer.last_name_kana
    elsif params[:select_profile] == '1'
    else
      flash[:error] = '情報を正しく入力して下さい。'
      render :new
    end
  end

  def create
  	@purchase_offer = PurchaseOffer.new(purchase_offer_params)
    @purchase_offer.save
    flash[:notice] ='購入のオファーを申し込みました！'
    redirect_to receieve_buyer_house_purchase_offers_path
  end

  def destroy
  end

  def receive
  end

  private
  def purchase_offer_params
    params.require(:purchase_offer).permit(:buyer_id, :house_id, :price, :order_status, :zip_code, :address, :phone_number, :first_name_kanji, :last_name_kanji, :first_name_kana, :last_name_kana)
  end
end
