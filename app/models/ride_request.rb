class RideRequest < ApplicationRecord
    has_many :rides 
    belongs_to :passenger
    enum :status {active: 0, inactive: 1, completed: 2}

end 