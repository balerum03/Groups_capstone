require 'rails_helper'

RSpec.describe 'Sessions', type: :feature do
  context '#Authentication' do
    before do
      visit '/users/new'
      fill_in 'User name', with: 'testuser'
      click_button 'Create User'
    end

    it 'Logs me in' do
      visit '/login'
      fill_in 'user_name', with: 'testuser'
      click_button 'Login'
      expect(page).to have_content 'Groups'
    end

    it 'Fails Login Due to Wrong Username' do
      visit '/login'
      fill_in 'user_name', with: 'wrong_username'
      click_on 'Login'
      expect(page).to have_content 'Login'
    end
  end
end
