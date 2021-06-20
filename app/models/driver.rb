class Driver < ApplicationRecord
    belongs_to :user
    has_many :schedules
    has_many :rides
end 