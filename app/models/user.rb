class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  # validates :image, presence: true

  has_many :games, dependent: :destroy
  has_many :memberships
end
