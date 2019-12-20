require 'rails_helper'

RSpec.feature 'Create Comment', type: :feature do
  before do
    @user = create(:user); login_as(@user)
    @post = create(:post)
  end

  scenario 'successfully comment on post' do
    visit post_path(@post)

    fill_in "Reply", with: 'Replied'

    click_button 'Reply!'

    expect(page).to have_content('Replied')
  end
end
