class Post < ApplicationRecord
  include Votable::Voted

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy

  validates :content, length: { maximum: 200 }
end
