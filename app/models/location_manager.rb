class LocationManager < ApplicationRecord
  belongs_to :user
  belongs_to :place
  validates :user_id, :presence => true
end
