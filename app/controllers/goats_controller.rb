class GoatsController < ApplicationController
  def index
    @goats = Goat.all
  end

  def show
    @goat = Goat.find(params[:id])
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.save
    redirect_to goats_path(@goat)
  end

  def edit
    @goat = Goat.find(params[:id])
  end

  def update
    @goat = Goat.find(params[:id])
    @goat.user = current_user
    @goat.update(goat_params)

    redirect_to goat_path(@goat)
  end

  def destroy
    @goat = Goat.find(params[:id])
    @goat.destroy
    redirect_to goats_path
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :color, :cuteness, :price, :photo)
  end
end
