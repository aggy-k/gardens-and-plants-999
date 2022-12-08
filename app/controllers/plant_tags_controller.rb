class PlantTagsController < ApplicationController
  before_action :set_plant

  def new
    @plant_tag = PlantTag.new
  end

  def create

    puts "params #{params}"
    # @plant_tag = PlantTag.new(plant_tag_params)
    # @plant_tag.plant = @plant
    # ["", "2", "4", "5", "3"]
    params[:plant_tag][:tag_id].each do |tag_id|
      next unless tag_id.present?

      PlantTag.find_or_create_by(
          tag_id: tag_id.to_i,
          plant: @plant
        )
    end

    redirect_to garden_path(@plant.garden)

    # if @plant_tag.save
    #   redirect_to garden_path(@plant.garden)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private
    def plant_tag_params
      # params.require(:plant_tag).permit(:tag_id)
    end

    def set_plant
      @plant = Plant.find(params[:plant_id])
    end
end
