class CreateStarredInfluencers < ActiveRecord::Migration[5.2]
  def change
    create_table :starred_influencers do |t|
      t.references :influencer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
