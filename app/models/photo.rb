class Photo < ApplicationRecord
	belongs_to :house
	attachment :image
end
