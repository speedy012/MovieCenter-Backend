class User < ApplicationRecord
  has_many :movie_users
  has_many :movies, through: :movie_users
  has_secure_password
end
