class RideRequest < ApplicationRecord
    has_many :rides 
    belongs_to :passenger
    enum :status {assigned: 0, unassigned: 1, canceled: 2}

end 