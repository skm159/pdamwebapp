class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: {maximum: 40}
  validates :email, presence: true, length: {maximum: 40}, format: {with: VALID_EMAIL_REGEX}, uniqueness:{ case_sensitive: false }
  validates :role, presence: true, length: {maximum: 20}
  validates :location, presence: true, length: {maximum: 50}
  
  has_secure_password
  validates :password, length: { minimum: 6 }
end
