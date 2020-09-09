class House < ApplicationRecord
	has_many :photos, dependent: :destroy
	has_many :purchase_offers, dependent: :destroy
	#refile導入
	attachment :image
	#category
	enum category: {戸建て: 0, マンション: 1}
	#floor_plan
	enum floor_plan: {Studio: 0, '1LDK': 1, '2LDK': 2, '3LDK': 3, '4LDK': 4, '5LDK': 5}
	#sales_status
	enum sales_status: {販売中: 0, 売り止め: 1, 成約済み: 2}
end
