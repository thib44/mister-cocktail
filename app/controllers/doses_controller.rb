class DosesController < ApplicationController
   before_action :set_dose, only: [:show]

  def index
    @doses = Dose.all
  end

  def show
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    # Review.new(restaurant_id: @restaurant.id, content: params[:review][:content])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.new(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_dose
      @dose = Dose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
    end
end
