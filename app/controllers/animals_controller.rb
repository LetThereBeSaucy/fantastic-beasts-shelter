class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
  end

  def create
    @animal = Animal.new(params.require(:animal).permit(:name, :color, :sex, :breed))

    @animal.save
    redirect_to @animal
  end

  def show
    @animal = Animal.find(params[:id])
  end

  private
    def animals_params
      params.require(:animal).permit(:name, :color, :sex, :breed)
    end
end
