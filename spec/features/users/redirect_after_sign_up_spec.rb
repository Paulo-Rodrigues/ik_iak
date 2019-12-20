require 'rails_helper'

RSpec.feature 'User', type: :feature do
  scenario 'redirect after sign up ' do
    visit root_path
    click_link "Sign up"

    fill_in "email", with: "test@test.com"
    fill_in "password", with: "password"
    fill_in "password confirmation", with: "password"

    click_button "Sign up"

    expect(page).to have_content("Index")
  end
end
