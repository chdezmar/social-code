class Profile < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :languages, through: :language_profiles
  has_many :language_profiles
end
