require 'rails_helper'

RSpec.describe User, type: :model do
  context 'respond_to ' do
    it {is_expected.to respond_to(:username)}
  end

  context 'associations' do
    it { is_expected.to have_many(:posts).dependent(:destroy) }
    it { is_expected.to have_many(:comments).dependent(:destroy) }
  end
end
