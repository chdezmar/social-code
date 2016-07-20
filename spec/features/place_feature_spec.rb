require 'rails_helper'

feature 'places' do

  context 'no added locations' do
    scenario 'user sees no places listed' do
      visit '/places'
      expect(page).to have_content 'No Places yet'
      expect(page).to have_link 'Add a Place'
    end

    scenario 'user can access the new place form' do
      visit '/places'
      click_link 'Add a Place'
      expect(current_path).to eq '/places/new'
    end

  end

  context 'users can see locations' do

    scenario 'user can see hotbox commercial st if added' do
      Place.create(name: 'hotbox', address: 'commercial st')
      visit '/places'
      expect(page).to have_content 'hotbox'
    end

  end

  # context 'users can save locations' do
  #
  #   scenario 'user specifies ' do
  #
  #   end
  #
  # end

end
