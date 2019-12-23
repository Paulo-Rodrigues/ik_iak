class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :votable, polymorphic: true

  validates :user_id, presence: true,
    uniqueness: {scope: [:votable_type, :votable_id], message: 'Already voted' }

  validates :votable_id, presence: true,
    uniqueness: {scope: [:user_id, :votable_type], message: 'Already voted'}

  validates :votable_type, presence: true,
    uniqueness: {scope: [:user_id, :votable_id], message: 'Already voted'}
end
