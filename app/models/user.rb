class User < ApplicationRecord
  has_many :microposts
  has_many :user_followings, class_name: 'UserFollow', foreign_key: :follower_id, dependent: :destroy
  has_many :followings, class_name: 'User', through: :user_followings, source: :user
  has_many :user_follows, dependent: :destroy
  has_many :followers, class_name: 'User', through: :user_follows, source: :follower

  has_secure_password

  validates :given_name, presence: true
  validates :family_name, presence: true
  validates :email_address, presence: true
  # TODO: email format
end
