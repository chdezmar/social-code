class Language < ApplicationRecord
  has_and_belongs_to_many :profiles, through: :language_profiles
  has_many :language_profiles
end
