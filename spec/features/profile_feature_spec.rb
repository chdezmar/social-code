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
        click_link 'Update Profile'
        fill_in 'Name', with: 'Bob'
        click_button 'Submit'
        expect(current_path).to eq '/users/1/profiles/1'
        expect(page).to have_content 'Bob'
      end
    end
  end
end
