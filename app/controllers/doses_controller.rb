class DosesController < ApplicationController
  def index
    @all_doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail), notice: 'Dose was successfully created.'
    else
      render :new
    end
  end

  def update
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.update(dose_params)
      redirect_to cocktail_path(@dose.cocktail), notice: 'Dose was successfully updated.'
    else
      render :new
    end
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def destroy
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: 'Dose was successfully deleted.'
  end


  private


  def dose_params
    params.require(:doses).permit(:amount_needed, :cocktail_id, :ingredient_id)
  end
end
