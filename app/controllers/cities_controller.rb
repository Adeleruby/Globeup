class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @display_events = Event.where(city: @city).sample(5)
    @display_users = User.where(current_location: @city).sample(25)
    @user_interests = UserInterest.all
    @trending_interests = Interest.all.sample(5)
  end
end
