require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:votable) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:votable_id) }
    it { is_expected.to validate_presence_of(:votable_type) }
  end
end
