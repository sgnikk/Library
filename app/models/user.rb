class User < ApplicationRecord
    has_secure_password
  
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
  
    def admin?
      user_level.downcase == 'admin' # Ensure case-insensitive comparison
    end
  end
  