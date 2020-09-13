class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :purchase_offers, dependent: :destroy
  has_many :visit_offers, dependent: :destroy

  def full_name
    last_name_kanji + " " + first_name_kanji
  end

  def full_name_kana
    last_name_kana + " " + first_name_kana
  end
end


 