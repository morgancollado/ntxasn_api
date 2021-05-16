class User < ApplicationRecord
    has_secure_password
    has_one :passenger 
    has_one :driver

end 