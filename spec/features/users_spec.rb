require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  it 'Creates a new user with the right params' do
    visit 'users/new'
    fill_in 'User name', with: 'testuser'
    click_button 'Create User'
    expect(page).to have_content 'Groups'
  end
end
