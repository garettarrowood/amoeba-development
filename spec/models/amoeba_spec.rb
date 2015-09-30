require 'rails_helper'

describe Amoeba do

  describe "#split" do

    it "produce 2 new amoebas" do
      x = Amoeba.all.length
      @zack.split(Amoeba.new, Amoeba.new)
      expect(Amoeba.all.length).to eq(x + 2)
    end
  end

end