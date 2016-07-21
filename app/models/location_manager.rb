class LocationManager < ApplicationRecord
  belongs_to :user
  belongs_to :place
  validates :user_id, :presence => true, :uniqueness => true

  def self.place_count(value)
    where(place_id: value).count
  end

  def self.user_not_checked_in?(value)
    where(user_id: value).empty?
  end

  def self.user_location(value)
    find_by(user_id: value).place.name
  end

  def self.find_location_id(value)
    find_by(user_id: value)
  end
end
