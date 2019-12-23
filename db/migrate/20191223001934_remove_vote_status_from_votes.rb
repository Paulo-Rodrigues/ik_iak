class RemoveVoteStatusFromVotes < ActiveRecord::Migration[6.0]
  def change

    remove_column :votes, :vote_status, :integer
  end
end
