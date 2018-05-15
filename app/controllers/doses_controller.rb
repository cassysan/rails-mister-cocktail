class DosesController < ApplicationController
  def index
  end

  def show
    @doses = Dose.find(params[:id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all - @cocktail.ingredients
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])

    if @dose.save!
      redirect_to cocktail_path(@dose.cocktail.id)
    else
      @ingredients = Ingredient.all - @cocktail.ingredients
      render 'cocktails/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @dose = Dose.find(params[:id])
    cocktail_id = @dose.cocktail_id
    @dose.delete
    redirect_to cocktail_path(cocktail_id)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end

end
