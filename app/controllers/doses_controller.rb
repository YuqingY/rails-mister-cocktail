class DosesController < ApplicationController
  def index
    @all_doses = Dose.all
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def show
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(params[:cocktail_id])
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
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    if @dose.update(dose_params)
      redirect_to cocktail_path(@dose.cocktail), notice: 'Dose was successfully updated.'
    else
      render :new
    end
  end

  def edit
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: 'Dose was successfully deleted.'
  end


  private


  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
