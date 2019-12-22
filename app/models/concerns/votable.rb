module Votable
  extend ActiveSupport::Concern

  module Voter

    def upvote(votable)
      votes.create(votable: votable, user_id: self.id, vote_status: :upvote)
    end

    def downvote(votable)
      votes.create(votable: votable, user_id: self.id, vote_status: :downvote)
    end
  end

  module Voted

    def total_votes
      votes.count
    end
  end

end
