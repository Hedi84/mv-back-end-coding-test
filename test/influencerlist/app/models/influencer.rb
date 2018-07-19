class Influencer < ApplicationRecord
  has_many :starred_influencers, dependent: :destroy
end
