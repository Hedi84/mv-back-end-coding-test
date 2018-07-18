class Influencer < ApplicationRecord
  has_many :users, through: :starred_influencers
end
