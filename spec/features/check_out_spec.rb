require 'rails_helper'

feature 'Check out' do
  context 'has not signed up yet' do
    it 'should not be able to check out of a place' do
      visit '/'
      expect(page).not_to have_button('Check out')
    end
  end

  context 'has signed up' do
    it 'should not be able to check out of a place' do
      sign_up_user
      expect(page).not_to have_button('Check out')
    end
  end

  context 'has checked in' do
    it 'should be able to check out' do
      sign_up_user
      Place.create(name: 'Hotbox', address: 'address')
      visit '/'
      click_button('Check in')
      expect(page).to have_button('Check out')
      expect(page).to have_content('You are checked into Hotbox')
    end

  end

end
