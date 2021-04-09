class User < ApplicationRecord
  has_secure_password


  validates :email,
            format: { with: /^(.+)@(.+)$/, message: "Email invalid"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 },
            presence: true

  validates :password_digest, presence: true
  validates :username, presence: true

end
