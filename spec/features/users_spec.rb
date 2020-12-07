require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  it 'Creates a new user with the right params' do
    visit 'users/new'
    fill_in 'User name', with: 'testuser'
    click_button 'Create User'
    expect(page).to have_content 'Groups'
  end

  it 'creates a user' do
    visit 'users/new'
    fill_in 'User name', with: 'i'
    click_button 'Create User'
    expect(page).to have_content 'User name is too short (minimum is 2 characters)'
  end
end
