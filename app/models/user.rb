class User < ApplicationRecord
    validates :name, presence: true, length: {maximum:15}
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    
    VALID_REGEX = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{8,32}+\z/
    validates :password, presence: true, length: {minimum:8, maximum:32}, format: { with: VALID_REGEX }
    validates :password_confirmation, presence: true, length: {minimum:8, maximum:32}, format: { with: VALID_REGEX }
    
    

    
    has_secure_password
end
