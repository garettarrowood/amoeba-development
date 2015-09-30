class Act < ActiveRecord::Base
  has_many :acts_amoebas
  has_many :ameobas, through: :acts_amoebas

end
