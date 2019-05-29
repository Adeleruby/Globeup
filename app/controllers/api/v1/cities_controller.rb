class Api::V1::CitiesController < Api::V1::BaseController
  def index
    @cities = City.all


    City.search_by_name_and_country_name
  end
end
