class Answer < ActiveRecord::Base

  belongs_to :user
  has_many :votes, as: :votable
  has_many :comments, as: :commentable

  def points
    votes.sum(:vote_value)
  end

end
