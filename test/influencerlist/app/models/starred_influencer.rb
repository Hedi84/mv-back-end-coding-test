class StarredInfluencer < ApplicationRecord
  belongs_to :influencer
  belongs_to :user
end
