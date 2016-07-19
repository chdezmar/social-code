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

  context 'users can add locations' do

    scenario 'user specifies hotbox commercial street' do
      visit '/places/new'
      fill_in 'Place Name', with: 'hotbox'
      fill_in 'Place Street', with: 'commercial street'
      click_button 'Submit'
      expect(current_path).to eq '/places'
      expect(page).to have_content 'HotBox London'
      expect(page).to have_content '46-48 Commercial St, London E1 6LT, United Kingdom'
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
