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
    @goat.user = current_user
    if @goat.save
      redirect_to goat_path(@goat)
    else
      render :new
    end
  end

  def edit
    @goat = Goat.find(params[:id])
  end

  def update
    @goat = Goat.find(params[:id])
    @goat.update(goat_params)

    redirect_to goat_path(@goat)
  end

  def destroy
    @goat = Goat.find(params[:id])
    @goat.destroy

    redirect_to goats_path
  end

  def my_goats
    # raise
    @goats = Goat.where("user_id = ?", current_user.id)
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :color, :cuteness, :price, :photo)
  end
end
