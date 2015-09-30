class Amoeba < ActiveRecord::Base
  has_many :acts_ameobas
  has_many :acts, through: :acts_ameobas
  has_one :talent
end
