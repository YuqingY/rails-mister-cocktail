class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save(cocktail_params)
    if @cocktail .save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def destroy
    @cocktail  = Cocktail.find(params[:id])
    @cocktail .destory
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

