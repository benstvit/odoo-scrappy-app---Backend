class User < ApplicationRecord
  belongs_to :user
  attr_accessor :name, :email, :street, :zip
end
