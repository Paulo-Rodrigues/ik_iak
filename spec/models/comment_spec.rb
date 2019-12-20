require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'respond_to ' do
    it { is_expected.to respond_to(:reply) }
  end

  context 'validations' do
    it {is_expected.to validate_length_of(:reply).is_at_most(140)}
    it { is_expected.to validate_presence_of(:reply) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:post) }
  end
end
