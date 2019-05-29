class Api::V1::CitiesController < Api::V1::BaseController

  def search
    @cities = City.search_by_name_and_country_name(params[:query])
  end
end

