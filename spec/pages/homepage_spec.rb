require 'rails_helper'

RSpec.feature 'HOMEPAGE', type: :feature do
    scenario 'returns 200 ok' do
        visit root_path

        expect(page).to have_http_status(200)
    end
end