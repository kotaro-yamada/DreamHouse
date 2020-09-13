class Buyer::VisitOffersController < Buyer::ApplicationController
  def index
    @visit_offers = current_buyer.visit_offers.all
  end

  def show
    @visit_offer = VisitOffer.find(params[:id])
  end

  def new
    @visit_offer = VisitOffer.new
    @house = House.find(params[:house_id])
  end

  def confirm
     @visit_offer = VisitOffer.new(visit_offer_params)
    @house = House.find(params[:visit_offer][:house_id])
    if params[:select_profile] == '0'
      @visit_offer.house_id = @house.id
      @visit_offer.amount = @house.price
      @visit_offer.zip_code = current_buyer.zip_code
      @visit_offer.address = current_buyer.address
      @visit_offer.phone_number = current_buyer.phone_number
      @visit_offer.first_name_kanji = current_buyer.first_name_kanji
      @visit_offer.last_name_kanji = current_buyer.last_name_kanji
      @visit_offer.first_name_kana = current_buyer.first_name_kana
      @visit_offer.last_name_kana = current_buyer.last_name_kana
    elsif params[:select_profile] == '1'
    else
      flash[:error] = '情報を正しく入力して下さい。'
      render :new
    end
  end

  def create
    @visit_offer = VisitOffer.new(visit_offer_params)
    @visit_offer.save
    flash[:notice] ='見学のオファーを申し込みました！'
    redirect_to buyer_visit_receieve_path
  end

  def update
  end

  def destroy
  end

  private
  def visit_offer_params
    params.require(:visit_offer).permit(:buyer_id, :house_id, :amount, :order_status, :zip_code, :address, :phone_number, :first_name_kanji, :last_name_kanji, :first_name_kana, :last_name_kana)
  end

end
