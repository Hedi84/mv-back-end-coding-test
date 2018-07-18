require 'test_helper'

class StarredInfluencersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get starred_influencers_new_url
    assert_response :success
  end

  test "should get create" do
    get starred_influencers_create_url
    assert_response :success
  end

  test "should get show" do
    get starred_influencers_show_url
    assert_response :success
  end

  test "should get index" do
    get starred_influencers_index_url
    assert_response :success
  end

end
