class DosesController < ApplicationController
  before_action :find_cocktail, except: [:destroy]

  def new
    @dose = Dose.new
  end

  def create
    # if Ingredient.find_by(name: dose_params[:ingredient]).nil?
    #   @ingredient = Ingredient.new(dose_params[ingredient])
    #   @ingredient.save
    # else
    #   @ingredient = Ingredient.find_by(name: dose_params[:ingredient])
    # end
    @dose = @cocktail.doses.build(dose_params)
    # @dose.ingredient = @ingredient
    # @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
