module Votable
  extend ActiveSupport::Concern

  module Voter

    def upvote(votable)
      if voted?(votable)
        update_vote(votable, :upvote)
      else
        create_vote(votable, :upvote)
      end
    end

    def downvote(votable)
      if voted?(votable)
        update_vote(votable, :downvote)
      else
        create_vote(votable, :downvote)
      end
    end

    def create_vote(votable, vote_status)
      votes.create(votable: votable, user_id: self.id, vote_status: vote_status)
    end

    def update_vote(votable, vote_status)
      vote = votes.where(votable_id: votable.id, user_id: self.id).first
      vote.update(vote_status: vote_status)
    end

    def voted?(votable)
      votes.where(votable_id: votable.id).exists?
    end
  end

  module Voted

    def total_votes
      votes.count
    end
  end

end
