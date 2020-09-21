class VisitOffer < ApplicationRecord
	has_one :preperred_date
	accepts_nested_attributes_for :preperred_date
	belongs_to :house
	belongs_to :buyer

	enum order_status: {申込中: 0, 成約: 1}

	def full_name
      last_name_kanji + " " + first_name_kanji
	end

	def full_name_kana
	  last_name_kana + " " + first_name_kana
	end
end
