class User < ApplicationRecord
  has_secure_password


  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true

  validates :password_digest, presence: true
  validates :username, presence: true

end
