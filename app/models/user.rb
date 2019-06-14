class User < ApplicationRecord
  has_many :movie_users
  has_many :movies, through: :movie_user
  has_secure_password
end
