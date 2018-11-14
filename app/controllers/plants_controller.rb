class PlantsController < ApplicationController
  before_action :set_park

  def new
    # blank plant object
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.park = @park
    if @plant.save
      redirect_to park_path(@park)
    else
      render :new
    end

  end

  private

  def set_park
    @park = Park.find(params[:park_id])
  end

  def plant_params
    params.require(:plant).permit(:name, :species, :age)
  end
end
