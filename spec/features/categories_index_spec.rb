require 'rails_helper'

RSpec.feature 'Categories' do
  let(:user) { create(:user) } # Create a user using FactoryBot, adjust this to your setup

  scenario 'User can see the list of categories after signing in' do
    # Create a user and visit the sign-in page
    user = create(:user)
    visit new_user_session_path

    # Fill in the login form with valid user credentials
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    # Click the sign-in button
    click_button 'Log in'

    # Now you can make your expectations for the page content
    expect(page).to have_content('LIST OF CATEGORIES')

    # Check if the "Add Category" button is present and click it
    click_link 'Add Category'

    # Check if the user is redirected to the new category page
    expect(page).to have_current_path(new_category_path)

    # Go back to the categories page
    visit categories_path

    # Check if the "Add Category" button is present again
    expect(page).to have_link('Add Category', href: new_category_path)
  end
end
