require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'respond_to' do
    it { is_expected.to respond_to(:content) }
  end

  context 'validations' do
    it { is_expected.to validate_length_of(:content).is_at_most(200) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:comments).dependent(:destroy) }
    it { is_expected.to have_many(:votes).dependent(:destroy) }
  end
end
