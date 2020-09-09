class PurchaseOffer < ApplicationRecord
	belongs_to :house
	belongs_to :buyer

  def full_name
    first_name_kanji + " " + last_name_kanji
  end

  def full_name_kana
    first_name_kana + " " + last_name_kana
  end
  
end
