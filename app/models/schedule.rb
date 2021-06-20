class Schedule < ApplicationRecord
    enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
    enum :status [:active, :inactive]
    belongs_to :driver
    has_many :rides

end 