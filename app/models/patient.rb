class Patient < ApplicationRecord
has_many :appoitnments
has_many :doctors, through: :appointments
end
