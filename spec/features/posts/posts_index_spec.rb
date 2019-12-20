require 'rails_helper'

RSpec.feature 'Index Posts', type: :feature do
  before do
    @user = create(:user); login_as(@user)
    @post1 = create(:post)
    @post2 = create(:post)
  end
  scenario 'has posts content' do
    visit posts_path

    expect(page).to have_content(@post1.content)
    expect(page).to have_content(@post2.content)
  end
end
