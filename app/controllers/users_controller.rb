class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if current_user != @user
      interest_ids = current_user.user_interests.map { |interest| interest.interest_id }
      interest_ids2 = @user.user_interests.map { |interest| interest.interest_id }
      if (interest_ids.nil? || interest_ids2.nil?)
        not_common = []
      else
        not_common = (interest_ids - interest_ids2) + (interest_ids2 - interest_ids)
      end
      if !not_common.empty?
        common = interest_ids - not_common

        @common_interests = common.map { |interest_id| Interest.find(interest_id)}
        @not_common_interests = not_common.map { |interest_id| Interest.find(interest_id)}
      else
        @common_interests = []
        @not_common_interests = []
      end
    end
  end
end
