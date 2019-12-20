require 'rails_helper'

RSpec.feature 'Posts Create', type: :feature do
  before do
    @user = create(:user); login_as(@user)
  end
  scenario 'successfully create post' do
    visit new_post_path

    fill_in "Content", with: 'Content'

    click_button "Post"

    expect(page).to have_content('Successfully created Post')
  end
end
