class Address < ApplicationRecord
    has_one :passenger
    has_one :clinic

end 