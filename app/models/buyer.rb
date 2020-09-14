class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :purchase_offers, dependent: :destroy
  has_many :visit_offers, dependent: :destroy

  validates :last_name_kanji, presence: true
  validates :first_name_kanji, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :zip_code, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  def full_name
    last_name_kanji + " " + first_name_kanji
  end

  def full_name_kana
    last_name_kana + " " + first_name_kana
  end
end


 