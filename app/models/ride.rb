class Ride < ApplicationRecord
    belongs_to :ride_request
    belongs_to :driver 
    belongs_to :passenger
    enum :status [:canceled, :initial_pickup, :clinic_dropoff, :clinic_pickup, :final_dropoff, :completed]
    has_many :ride_change_logs
    belongs_to :schedule

end 