class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_one :profile, dependent: :destroy

  has_many :location_managers
  has_many :places , through: :location_managers

  before_create :build_profile
  accepts_nested_attributes_for :profile

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end
