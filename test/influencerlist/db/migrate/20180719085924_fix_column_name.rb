class FixColumnName < ActiveRecord::Migration[5.2]
  def change

    rename_column :influencers, :influencer_instragram_username, :influencer_instagram_username
  end
end
