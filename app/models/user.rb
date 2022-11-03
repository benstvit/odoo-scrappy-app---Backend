class User < ApplicationRecord
  require 'securerandom'
  has_many :clients

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
end
