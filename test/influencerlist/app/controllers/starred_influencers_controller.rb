class StarredInfluencersController < ApplicationController

  def create
    @influencer = Influencer.find(params[:id])
    @starred_influencer = StarredInfluencer.new(current_user, @influencer)
    @starred_influencer.user = current_user
    redirect_to root_path
  end


  def destroy
    @starred_influencer= Starred_influencer.find(params[:id])
    @starred_influencer.delete
    redirect_to root_path
  end

end
