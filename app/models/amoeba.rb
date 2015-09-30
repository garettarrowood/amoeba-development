class Amoeba < ActiveRecord::Base
  has_many :acts_amoebas
  has_many :acts, through: :acts_amoebas
  has_one :talent
end
