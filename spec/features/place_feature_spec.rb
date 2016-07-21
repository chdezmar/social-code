require 'rails_helper'

feature 'places' do

  context 'no added locations' do
    it 'user sees no places listed' do
      visit '/'
      expect(page).to have_content 'No Places yet'
      expect(page).to have_link 'Add a Place'
    end

    it 'user can access the new place form' do
      visit '/'
      click_link 'Add a Place'
      expect(current_path).to eq '/places/new'
    end

  end

  context 'users can see locations details' do

    it 'user can see name of the location added' do
      Place.create(name: 'hotbox', address: 'commercial st')
      visit '/'
      expect(page).to have_content 'hotbox'
    end

    it 'user can see the number of people currently checked in places' do
      Place.create(name: 'hotbox', address: 'commercial st')
      visit '/'
      sign_up_user
      click_button 'Check in'
      expect(page).to have_content 'Currently here: 1'
    end

    it 'the number of people currently checked in places is updated' do
      Place.create(name: 'hotbox', address: 'commercial st')
      visit '/'
      sign_up_user
      click_button 'Check in'
      click_link 'Check out'
      expect(page).to have_content 'Currently here: 0'
    end

    it 'user can see the number of people currently checked in places whilst not signed in' do
      Place.create(name: 'hotbox', address: 'commercial st')
      visit '/'
      expect(page).to have_content 'Currently here: 0'
    end

  end


end
