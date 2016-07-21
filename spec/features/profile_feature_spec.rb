require 'rails_helper'

feature 'user profile' do
  context 'new user created' do
    scenario  'profile is created automatically' do
      sign_up_user
      click_link 'Your profile'
      # expect(current_path).to eq '/users/1/profiles/1'
      expect(page).to have_content 'Name'
      expect(page).to have_content 'Bio'
    end

    context 'update profile' do
      scenario 'user successfully updates their profile' do
        sign_up_user
        click_link 'Your profile'
        click_link 'Edit profile'
        fill_in 'Name', with: 'Bob'
        fill_in 'Bio', with: 'Programmer for 5 years'
        find(:xpath, "//input[@value='7']").set(true)
        click_button 'Update Profile'
        expect(page).to have_content 'Bob'
        expect(page).to have_content 'Programmer for 5 years'
        expect(page).to have_content 'Java'
      end
    end
  end
end
