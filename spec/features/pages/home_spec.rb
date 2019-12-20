require 'rails_helper'

RSpec.feature 'HOMEPAGE', type: :feature do
  scenario 'return 200ok' do
    visit root_path

    expect(page).to have_http_status(200)
    expect(page).to have_content('IK IAK')
  end
end
