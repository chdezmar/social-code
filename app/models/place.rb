class Place < ApplicationRecord

  has_many :location_managers
  has_many :users , through: :location_managers

end
