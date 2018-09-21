class User < ApplicationRecord
  has_many :microposts

  has_secure_password

  validates :given_name, presence: true
  validates :first_name, presence: true
  validates :email_address, presence: true
  # TODO: email format
end
