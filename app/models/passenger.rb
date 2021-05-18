class Passenger < ApplicationRecord 
    belongs_to :user
    has_many :address
    has_many :ride_requests
    has_many :rides
end 