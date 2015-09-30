class AmoebasController < ApplicationController

  def main
    render 'main'
  end

  def index
    @amoebas = Amoeba.all
  end

  def new
    @amoeba = Amoeba.new
  end

end
