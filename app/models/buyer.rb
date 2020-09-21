class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :purchase_offers, dependent: :destroy
  has_many :visit_offers, dependent: :destroy

  validates :last_name_kanji, presence: true
  validates :first_name_kanji, presence: true
  validates :postcode, presence: true
  validates :phone_number, presence: true

  def full_name
    last_name_kanji + " " + first_name_kanji
  end

  def full_name_kana
    last_name_kana + " " + first_name_kana
  end

  def address
    self.prefecture_name + address_city + address_street + address_building
  end

  #JpPrefecture
  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end


