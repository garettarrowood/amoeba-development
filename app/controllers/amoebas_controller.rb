class AmoebasController < ApplicationController
  before_action :set_amoeba, only: [:show, :edit, :update, :destroy, :split]

  def main
    render 'main'
  end

  def index
    @amoebas = Amoeba.all
  end

  def show
  end

  def new
    @amoeba = Amoeba.new
  end

  def create
    @amoeba = Amoeba.new(amoeba_params)
    talent = Talent.find(params[:talent][:talent_id])
    @amoeba.talent = talent
    params[:act][:act_id].each do |act_id|
      act = Act.find(act_id)
      @amoeba.acts << act
    end
    @amoeba.save
    redirect_to @amoeba, notice: "Amoeba was successfully created."
  end

  def split
    @amoeba.split(Amoeba.new, Amoeba.new)
    @amoeba.destroy
    redirect_to '/amoebas'
  end

  def update
    @amoeba.update(amoeba_params)
    talent = Talent.find(params[:talent][:talent_id])
    @amoeba.talent = talent
    @amoeba.acts = []
    params[:act][:act_id].each do |act_id|
      act = Act.find(act_id)
      @amoeba.acts << act
    end
    @amoeba.save
    redirect_to @amoeba, notice: "Amoeba was successfully updated."
  end

  def destroy
    @amoeba.destroy
    redirect_to '/amoebas', notice: "Say goodbye to #{@amoeba.name} :(."
  end

  private

    def amoeba_params
      params.require(:amoeba).permit(:name, :generation)
    end

    def set_amoeba
      @amoeba = Amoeba.find(params[:id])
    end

end
