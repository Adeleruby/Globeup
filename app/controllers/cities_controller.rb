class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  private

  def city_params
    params.require(:city).permit(:name, :location, :description)
  end
end
