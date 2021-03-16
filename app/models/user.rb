class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, length: { in: 4..12 }, uniqueness: true
    validates :password, length: { in: 6..20 }
    validates :email, confirmation: true
    validates :email_confirmation, presence: true
end
