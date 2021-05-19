class Ride < ApplicationRecord
    belongs_to :ride_request
    belongs_to :driver 
    belongs_to :passenger
    has_many :ride_change_logs
    belongs_to :schedule
    
    enum status: {canceled: 0, initial_pickup: 1, clinic_dropoff: 2, clinic_pickup: 3, final_dropoff: 4, completed: 5}
end 