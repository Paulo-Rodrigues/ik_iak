require 'rails_helper'

RSpec.feature 'Abou Page', type: :feature do
    scenario 'returns 200 ok' do
        visit about_path

        expect(page).to have_content("About")
    end
end