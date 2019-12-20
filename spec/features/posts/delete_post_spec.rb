require 'rails_helper'

RSpec.feature 'Delete Post', type: :feature do
  before do
    @user = create(:user); login_as(@user)
    @post = create(:post)
  end

  scenario 'successfully delete post' do
    visit post_path(@post)

    click_link "Delete"

    expect(page).to have_content("Successfully deleted Post")
  end
end
