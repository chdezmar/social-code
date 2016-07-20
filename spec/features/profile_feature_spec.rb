require 'rails_helper'

feature 'user profile' do
  context 'new user created' do
    scenario  'profile is created automatically' do
      sign_up_user
      click_link 'Your profile'
      expect(current_path).to eq '/users/1/profiles/1'
    end

    context 'update profile' do
      scenario 'user successfully updates their profile' do
        sign_up_user
        click_link 'Your profile'
        click_link 'Edit profile'
        fill_in 'Name', with: 'Bob'
        fill_in 'Email', with: 'bob@bob.com'
        click_button 'Update Profile'
        expect(page).to have_content 'Bob'
        expect(page).to have_content 'bob@bob.com'
      end
    end
  end
end
