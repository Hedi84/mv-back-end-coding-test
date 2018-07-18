class CreateInfluencers < ActiveRecord::Migration[5.2]
  def change
    create_table :influencers do |t|
      t.string :influencer_full_name
      t.string :influencer_instragram_username
      t.string :influencer_instagram_profile_image
      t.integer :statistics_followers
      t.float :statistics_engagement

      t.timestamps
    end
  end
end
