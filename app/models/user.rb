class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A{\w+\_.}+@{a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

end
