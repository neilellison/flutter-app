class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :users, through: :likes

  def like(user)
    likes << Like.new(user: user)
  end

  def unlike(user)
    likes.where(user_id: user.id).first.destroy
  end
end
