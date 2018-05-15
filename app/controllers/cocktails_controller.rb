class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
    if params[:search]
      @cocktails = Cocktail.search(params[:search])
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
    @ingredients = Ingredient.all
    @dose = Dose.new
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

  def search
    @cocktails = Cocktail.find_by_name(drink_params)
  end

  private

  def drink_params
    params.require(:cocktail).permit(:name, :photo, :dose, :search)
  end


end
