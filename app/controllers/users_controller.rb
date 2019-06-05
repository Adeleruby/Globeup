class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    unless current_user == @user
      interest_ids = current_user.user_interests.map { |interest| interest.interest_id }
      interest_ids2 = @user.user_interests.map { |interest| interest.interest_id }
      not_common = (interest_ids - interest_ids2) + (interest_ids2 - interest_ids)
      unless not_common.empty?
        common = interest_ids - not_common
        @common_interests = common.map { |interest_id| Interest.find(interest_id)}
        @not_common_interests = not_common.map { |interest_id| Interest.find(interest_id)}
      end
    end
  end
end
