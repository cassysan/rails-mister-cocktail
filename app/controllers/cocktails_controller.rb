class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(drink_params)
    if @cocktail.save!
      redirect_to cocktails_path
    else
      render action: 'new'
    end
  end

  private

  def drink_params
    params.require(:cocktail).permit(:name, :url, :dose)
  end


end
