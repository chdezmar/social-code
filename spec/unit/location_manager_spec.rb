require 'rails_helper'

describe LocationManager do

  let(:locationmanager) { described_class }

  before do
    load_location_manager
  end

  context '#place_count' do
    it 'counts the places' do
      expect(locationmanager.place_count(1)).to eq 2
    end
  end
  context '#user_not_checked_in?' do
    it 'returns false if the user is checked in' do
      expect(locationmanager.user_not_checked_in?(5)).to eq true
    end
    it 'returns true if the user is not checked in' do
      expect(locationmanager.user_not_checked_in?(1)).to eq false
    end
  end
  context '#user_location' do
    it 'knows wher the user is' do
      expect(locationmanager.user_location(1)).to eq 'Hotbox'
    end
  end
  context '#find_location_id' do
    it 'knows the location id of where the user is' do
      expect(locationmanager.find_location_entry(2)).to eq @test_location
    end
  end
end
