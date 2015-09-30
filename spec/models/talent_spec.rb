require 'rails_helper'

describe Talent do
  
  it "can have name" do
    expect(Talent.new(name: "Jester")).to be_valid
  end

end