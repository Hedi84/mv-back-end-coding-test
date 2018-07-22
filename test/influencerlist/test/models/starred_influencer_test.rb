require './test/test_helper'

class StarredInfluencerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :starred_influencers, :influencers, :users

  def test_starred_influencer


  test_star_inf = StarredInfluencer.new(influencer_id: influencers(:one).id,
  user_id: users(:one).id)
  assert test_star_inf.save


  test_star_inf_copy = StarredInfluencer.find(test_star_inf.id)

  assert_equal test_star_inf.influencer_id, test_star_inf_copy.influencer_id

  influencer = Influencer.find(test_star_inf.influencer_id)

  assert_equal influencer.influencer_instagram_username, test_star_inf.influencer.influencer_instagram_username

  assert test_star_inf.save
  assert test_star_inf.destroy

  end
end






