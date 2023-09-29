require 'rails_helper'

RSpec.feature 'Add New Category' do
  let(:user) { create(:user) } # Create a user using FactoryBot, adjust this to your setup

  before do
    # Create a user and visit the sign-in page
    user = create(:user)
    visit new_user_session_path

    # Fill in the login form with valid user credentials
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    # Click the sign-in button
    click_button 'Log in'

    # Visit the new category page
    visit new_category_path
  end

  scenario 'User can add a new category' do
    # Fill in the category form with valid data
    fill_in 'Category Name', with: 'New Category'
    select 'Select an Icon', from: 'Select Icon' # Select an icon, adjust as needed

    # Click the save button
    click_button 'Save'
  end
end
