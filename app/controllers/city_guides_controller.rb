require 'open-uri'
require 'nokogiri'

class CityGuidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    url = "https://www.free-city-guides.com/paris/"
    @descriptions = []
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('.entry-content p').each do |e|
    @descriptions << e.text.strip
    end
  end
end
