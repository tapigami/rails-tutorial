class User < ApplicationRecord
  has_many :microposts

  has_secure_password
end
