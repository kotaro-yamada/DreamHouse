class Buyer::VisitOffersController < Buyer::ApplicationController
  def index
    @visit_offers = current_buyer.visit_offers
  end

  def show
    @visit_offer = VisitOffer.find(params[:id])
    @prefered_dates = @visit_offer.prefere
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
      @visit_offer.postcode = current_buyer.postcode
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
    visit_offer = VisitOffer.find(params[:id])
    if visit_offer.destroy
      flash[:notice] = "見学オファーを削除しました。"
      redirect_to　buyer_visit_offers_path
    else
      render action: :show
    end
  end

  private
  def visit_offer_params
    params.require(:visit_offer).permit(:buyer_id, :house_id, :amount, :order_status, :postcode, :address, :phone_number, :first_name_kanji, :last_name_kanji, :first_name_kana, :last_name_kana)
  end

end
