class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :reply, presence: true, length: { maximum: 140 }
end
