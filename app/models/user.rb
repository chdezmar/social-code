class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  belongs_to :location_manager
  has_one :profile, dependent: :destroy
  before_create :build_profile
  accepts_nested_attributes_for :profile
end
