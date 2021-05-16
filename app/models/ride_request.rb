class RideRequest < ApplicationRecord
    has_many :rides 
    belongs_to :passenger
    enum :status [:active, :inactive, :completed]

end 