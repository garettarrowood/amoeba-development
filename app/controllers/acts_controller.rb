class ActsController < ApplicationController

  def index
    @acts = Act.all
  end

  def show
  end

  def new
    @act = Act.new
  end

  private

    def act_params
      params.require(:amoeba).permit(:name, :picture)
    end

    def set_amoeba
      @amoeba = Amoeba.find(params[:id])
    end

end
