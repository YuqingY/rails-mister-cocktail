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
    if @dose.save
      redirect
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
