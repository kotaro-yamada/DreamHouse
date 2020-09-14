class ApplicationController < ActionController::Base
  #　ストロングパラメータの読み取り
	before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後の画面遷移を引数のモデルで分岐
  def after_sign_in_path_for(resource) 
  	if resource.is_a?(Buyer)
      buyer_top_path
    else
      seller_top_path
    end
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :last_name_kanji, :first_name_kanji, :last_name_kana, :first_name_kana, :zip_code, :address, :phone_number])
  end

end
