module Votable
  extend ActiveSupport::Concern

  module Voter

    def upvote(votable)
      votes.create(votable: votable, user_id: self.id)
    end

    def voted?(votable)
      votes.where(votable_id: votable.id).exists?
    end
  end

  module Voted
   
    module ClassMethods
      def most_voted
        posts = Post.all
        posts.sort_by {|p| p.total_votes}.reverse
      end
    end

    def total_votes
      votes.count
    end
  end

end
