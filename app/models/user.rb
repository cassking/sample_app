
class User < ActiveRecord::Base

attr_accessible :name, :email, :password, :password_confirmation

  # before_save { self.email = email.downcase }
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence:   true, format:     { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
    validates :password_confirmation, presence: true
  after_validation { self.errors.messages.delete(:password_digest) }
end