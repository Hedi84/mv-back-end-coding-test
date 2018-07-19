class PagesController < ApplicationController

  def home
  @user = current_user
  @influencers = Influencer.all
  @starred_influencers = @user.starred_influencers
  end

end
