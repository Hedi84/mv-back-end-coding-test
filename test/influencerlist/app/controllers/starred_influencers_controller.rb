class StarredInfluencersController < ApplicationController

  # only create and destroy CRUD actions are needed here, since they are
  # displayed on home.

  def create
    @influencer = Influencer.find(params[:influencer_id])
    @starred_influencer = StarredInfluencer.new
    @starred_influencer.influencer = @influencer
    @starred_influencer.user = current_user
    @starred_influencer.save
    redirect_to root_path
  end

  def destroy
    @starred_influencer= StarredInfluencer.find(params[:id])
    @starred_influencer.delete
    redirect_to root_path
  end

end
