class PlantsController < ApplicationController

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    if @plant.save
      redirect_to garden_path(@garden)
    else
      puts "error #{@garden.errors.full_messages}"
      render 'gardens/show', status: 422
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@plant.garden), status: 303
  end

  private
    def plant_params
      params.require(:plant).permit(:name, :image_url)
    end
end
