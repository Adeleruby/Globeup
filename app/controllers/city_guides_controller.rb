require 'open-uri'
require 'nokogiri'

class CityGuidesController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    # url = "https://www.free-city-guides.com/#{@city.name}/"
    url = "https://www.free-city-guides.com/#{@city.name}/"

    @descriptions = []
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('.entry-content p').each do |e|
    @descriptions << e.text.strip
    end
  end
end
