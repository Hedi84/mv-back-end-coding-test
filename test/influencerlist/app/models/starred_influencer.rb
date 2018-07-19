class StarredInfluencer < ApplicationRecord
  belongs_to :influencer
  belongs_to :user

  validates_uniqueness_of :user_id, :scope => [:influencer_id]
end
