require 'rails_helper'

RSpec.feature 'About Page', type: :feature do
  scenario 'return 200 ok' do
    visit about_path

    expect(page).to have_http_status(200)
    expect(page).to have_content('About')
  end
end
