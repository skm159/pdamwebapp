class User < ActiveRecord::Base
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: {maximum: 40}
  validates :email, presence: true, length: {maximum: 40}, format: {with: VALID_EMAIL_REGEX}
  validates :role, presence: true, length: {maximum: 10}
  validates :location, presence: true, length: {maximum: 50}
  
  
end
