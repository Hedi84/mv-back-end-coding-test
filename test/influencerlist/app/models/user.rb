class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :starred_influencers
  has_many :influencers, through: :starred_influencers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
