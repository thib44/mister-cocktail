class IngredientsController < ApplicationController

  before_action :set_ingredient, only: [:show]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
     @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end
