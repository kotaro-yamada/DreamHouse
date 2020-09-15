class Seller::SellersController < Seller::ApplicationController
  def show
  	@seller = current_seller
    @houses = @seller.houses
  end

  def edit
  	@seller = current_seller
  end

  def update
  	@seller = current_seller
  	if @seller.update(seller_params)
			flash[:notice] = "会員情報を更新しました"
			redirect_to seller_sellers_show_path
		else
			render :edit
		end
  end

  def resign_page
  end

  def resign
  	@seller = current_seller
    #is_enabledのdefault値はtrueとする。
    @seller.update(is_enabled: false)
    ##ログアウト
    reset_session
    flash[:notice] = "休会処理を完了致しました。"
    redirect_to root_path
  end

  private
  def seller_params
    params.require(:seller).permit(:last_name_kanji, :first_name_kanji, :last_name_kana, :first_name_kana, :zip_code, :address, :phone_number, :email)
  end
end
