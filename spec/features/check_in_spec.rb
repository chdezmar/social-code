require 'rails_helper'


feature 'User' do
  context 'has not signed up yet' do
    it 'should not be able to check in a place' do
      Place.create(name: 'Hotbox', address: 'address')
      visit '/'
      expect(page).not_to have_button('Check in')
      end
    end
    context 'has signed up' do
      it 'should be able to check in a place' do
        Place.create(name: 'Hotbox', address: 'address')
        sign_up_user
        visit '/'
        click_button('Check in')
        click_link('Hotbox')
        expect(page).to have_content('test@gmail')
      end

      it 'should not be able to check in twice' do
        Place.create(name: 'Hotbox', address: 'address')
        sign_up_user
        visit '/'
        click_button('Check in')
        expect(page).not_to have_button('Check in')
      end

      it 'should not be able to check in twice backend (unit test)' do
        place = Place.create(id: 1, name: 'Hotbox', address: 'address')
        user = User.create(id: 1, email: 'test@tmasdg.com', password: 'address')
        LocationManager.create(user_id: user.id, place_id: place.id)
        LocationManager.create(user_id: user.id, place_id: place.id)
        expect(LocationManager.count).to equal(1)
      end
    end

end
