class PagesController < ApplicationController

  def home

  @user = current_user
  @influencers = Influencer.all
  @starred_influencers = @user.starred_influencers

  ids = []
    @starred_influencers.each do |starred_influencer|
     ids << starred_influencer.influencer_id
    end
    @ids = ids
  end
end
