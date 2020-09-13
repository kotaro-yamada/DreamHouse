class VisitOffer < ApplicationRecord
	belongs_to :house
	belongs_to :buyer

	def full_name
      last_name_kanji + " " + first_name_kanji
	end

	def full_name_kana
	  last_name_kana + " " + first_name_kana
	end
end
