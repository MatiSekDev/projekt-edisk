class User < ApplicationRecord
  has_many :edisk_files
  has_many :edisk_directories
  has_secure_password


  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true

  validates :password_digest, presence: true
  validates :username, presence: true, uniqueness: true
  # validates :account_size, absence: true

end
