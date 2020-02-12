class User < ApplicationRecord
    has_many :career_services
    has_secure_password
end
