class RideChangeLog < ApplicationRecord
    belongs_to :ride 

    enum prev_status: Ride.statuses, _prefix: :previous
    enum updated_status: Ride.statuses, _prefix: :updated
end 