require 'open-uri'
require 'nokogiri'

class CityGuidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @city = City.find(params[:city_id])
    url = "https://www.free-city-guides.com/#{@city.search_name}/"
    # url = "https://www.free-city-guides.com/new_york/"

    @descriptions = []
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('.entry-content p')[0...8].each do |e|
    @descriptions << e.text.strip
    end
  end
end
