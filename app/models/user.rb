class User < ApplicationRecord
  has_many :tweets

  has_many :followers
  has_many :following
end
