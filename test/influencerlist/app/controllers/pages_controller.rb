class PagesController < ApplicationController

  def home
  @user = current_user

  # if @user.starred_influencers
  #   @starred_influencers = @user.starred_influencers
  # end
  @influencers = Influencer.all
  end

end
