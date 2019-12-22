require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'respond_to ' do
    it { is_expected.to respond_to(:vote_status) }
    it { is_expected.to define_enum_for(:vote_status).with_values([:upvote, :downvote]) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:votable) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:votable_id) }
    it { is_expected.to validate_presence_of(:votable_type) }
    it { is_expected.to validate_presence_of(:vote_status) }
  end
end
