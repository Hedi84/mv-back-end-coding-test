class StarredInfluencer < ApplicationRecord
  has_and_belongs_to_many :influencers
  belongs_to :user
end
