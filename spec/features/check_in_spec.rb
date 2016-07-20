require 'rails_helper'


feature 'User' do
  context 'has not signed up yet' do
    xit 'should not be able to check in a place' do
      Place.create(name: 'Hotbox')
      visit '/'
      click_link('Check in')
      expect(current_path).to be('/users/sign_in')
      end
    end
    context 'user can check in to a place' do
      it 'should be able to check in a place' do
        Place.create(name: 'Hotbox')
        sign_up_user
        visit '/'
        click_button('Check in')
        click_link('Hotbox')
        expect(page).to have_content('test@gmail')
        end
      end
end
