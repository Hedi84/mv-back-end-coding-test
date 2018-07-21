class PagesController < ApplicationController



  def home


    @hash = {
      "statistics engagement desc" => "filter"
    }
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

     @user_options = [["Sort by", ""],["Engagement (Low-High)", "statistics engagement desc."], ["Engagement (High-Low)", "statistics engagement asc."], ["Followers (Low-High)", "followers desc."], ["Followers (High-Low)", "followers asc."], ["Full Name", "name"], ["User Name", "username"]]

    filter = params[:sort]

    if filter.nil?
      @starred_influencer
    elsif filter == "statistics engagement desc."
      @influencers_starred = influencers_starred.sort! { |a,b| a.statistics_engagement <=> b.statistics_engagement}
    elsif filter == "statistics engagement asc."
      @influencers_starred = influencers_starred.sort! { |a,b| b.statistics_engagement <=> a.statistics_engagement}
    elsif filter == "followers desc."
      influencers_starred.sort! { |a,b| a.statistics_followers <=> b.statistics_followers}
    elsif filter == "followers asc."
      influencers_starred.sort! { |a,b| b.statistics_followers <=> a.statistics_followers}
    elsif filter == "name"
      influencers_starred.sort_by! { |a| a.influencer_full_name.downcase }
    elsif filter == "username"
      influencers_starred.sort_by! { |a| a.influencer_instagram_username.downcase }
    end
  end

  # private



end
