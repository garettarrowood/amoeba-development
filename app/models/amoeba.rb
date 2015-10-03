class Amoeba < ActiveRecord::Base
  has_many :acts_amoebas, dependent: :destroy
  has_many :acts, through: :acts_amoebas
  belongs_to :talent

  NAMES = ["Jeff", "Bob", "Ansley", "Ashley", "Mary", "Molly", "Heather", "Sambo", "Judy", "Frank", "Jester", "Frances", "Jimbob", "Lucky", "Shosta", "Plagul", "Zack", "Jessica"]

  def split(newA, newB)
    [newA, newB].each do |a|
      a.acts = acts
      a.talent = talent
      a.name = NAMES.sample
      a.avatar = avatar
      a.generation = generation + 1
      a.save
    end
  end

end
