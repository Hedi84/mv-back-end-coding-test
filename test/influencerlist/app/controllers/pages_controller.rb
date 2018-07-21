class PagesController < ApplicationController

helper_method :sort_by_params, :sort_direction

  def home
    @user = current_user
    @influencers = Influencer.all
    @starred_influencers = @user.starred_influencers
    ids = []
      @starred_influencers.each do |starred_influencer|
       ids << starred_influencer.influencer_id
      end
      @ids = ids

    influencers_starred = []
    @ids.each do |id|
      @influencer = Influencer.find(id)
      influencers_starred << Influencer.find(id)
      @influencers_starred = influencers_starred
    end

    filter = params[:sort]

    if filter.nil?
      @starred_influencer
    elsif filter == "statistics engagement desc."
      @influencers_starred = influencers_starred.sort! { |a,b| a.statistics_engagement <=> b.sort_by_params }
    elsif filter == "statistics engagement asc."
      @influencers_starred = influencers_starred.sort! { |a| a.statistics_engagement }

    end
  end

  # private



end
