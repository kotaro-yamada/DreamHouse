class Photo < ApplicationRecord
	belongs_to :house
	#refile導入
	attachment :image
end
