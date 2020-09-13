class Buyer::BuyersController < Buyer::ApplicationController
  def show
  	@purchase_offers = current_buyer.purchase_offers
  	@visit_offers = current_buyer.visit_offers
  end

  def edit
  	@buyer = current_buyer
  end

  def update
  	@buyer = current_buyer
  	if @buyer.update(buyer_params)
			flash[:notice] = "会員情報を更新しました"
			redirect_to buyer_buyers_path
		else
			render :edit
		end
  end

  def resign_page
  end

  def resign
  	@customer = current_customer
    #is_enabledのdefault値はtrueとする。
    @customer.update(is_enabled: false)
    ##ログアウト
    reset_session
    flash[:notice] = "休会処理を完了致しました。"
    redirect_to root_path
  end

  def destroy
  end

  private
  def buyer_params
    params.require(:buyer).permit(:last_name_kanji, :first_name_kanji, :last_name_kana, :first_name_kana, :zip_code, :address, :phone_number, :email)
  end

end
