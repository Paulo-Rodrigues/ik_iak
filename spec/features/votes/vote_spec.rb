require 'rails_helper'

RSpec.feature 'Create Vote', type: :feature do
  before do 
    @user = create(:user); login_as(@user)
    @post = create(:post)
  end

  scenario 'successfully upvote post' do
    visit post_path(@post)

    click_link "Upvote"

    expect(page).to have_content("Already voted")
  end
end
