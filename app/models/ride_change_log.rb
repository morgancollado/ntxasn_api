class RideChangeLog < ApplicationRecord
    belongs_to :ride 
    enum :prev_status [:canceled, :initial_pickup, :clinic_dropoff, :clinic_pickup, :final_dropoff, :completed]
    enum :updated_status [:canceled, :initial_pickup, :clinic_dropoff, :clinic_pickup, :final_dropoff, :completed]
end 