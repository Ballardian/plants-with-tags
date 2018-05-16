class PlantsTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plants_tag = PlantsTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tag = Tag.find(params[:plants_tag][:tag])
    @plants_tag = PlantsTag.new
    @plants_tag.plant = @plant
    @plants_tag.tag = @tag
    @plants_tag.save
    redirect_to garden_path(@plant.garden)
  end
end
